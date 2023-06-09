/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.c
  * @brief          : Main program body
  ******************************************************************************
  * @attention
  *
  * Copyright (c) 2023 STMicroelectronics.
  * All rights reserved.
  *
  * This software is licensed under terms that can be found in the LICENSE file
  * in the root directory of this software component.
  * If no LICENSE file comes with this software, it is provided AS-IS.
  *
  ******************************************************************************
  */
/* USER CODE END Header */
/* Includes ------------------------------------------------------------------*/
#define ARM_MATH_CM4

#include "main.h"
#include <stdlib.h>
#include "timer.h"
#include "GPIO.h"
#include "DMA.h"
#include "ADC.h"
#include "arm_math.h"
#include "arm_const_structs.h"
#include "UART.h"
#include "UART_plotter.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */

/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */

/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */
/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */

/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/

/* USER CODE BEGIN PV */

/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);
/* USER CODE BEGIN PFP */

/* USER CODE END PFP */

/* Private user code ---------------------------------------------------------*/
/* USER CODE BEGIN 0 */

/* USER CODE END 0 */

/**
  * @brief  The application entry point.
  * @retval int
  */
int main(void)
{
  /* USER CODE BEGIN 1 */
	uint16_t collectedsamples[LENGTH_OF_ARRAY] = {0}; //create array for 2x size of samples collected per f calculation
	q15_t testOutput[LENGTH_OF_FFT*2] = {0};
	int freq;
  /* USER CODE END 1 */

  /* MCU Configuration--------------------------------------------------------*/

  /* Reset of all peripherals, Initializes the Flash interface and the Systick. */
  HAL_Init();

  /* USER CODE BEGIN Init */

  /* USER CODE END Init */

  /* Configure the system clock */
  SystemClock_Config();

  /* USER CODE BEGIN SysInit */

  /* USER CODE END SysInit */

  /* Initialize all configured peripherals */
  /* USER CODE BEGIN 2 */
  GPIO_init();
  ADC_init();
  DMA1channel1_ADC_init(collectedsamples);
  tim2_init();
  UART_Init();

  q15_t * sampleloc1 =  (q15_t *)&collectedsamples;
  q15_t * sampleloc2 =  (q15_t *)&collectedsamples[2047];
  q15_t * outputloc = &testOutput[0];
  q15_t * maxfreq = &testOutput[1];


  /* USER CODE END 2 */

  /* Infinite loop */
  /* USER CODE BEGIN WHILE */
  	  UART_escapes("[2J");
	  UART_escapes("[H");
  	  UART_print("Frequency: ");
  	  UART_escapes("[s");
  	  char freqstring[4];
	  q15_t max;
	  uint32_t index;
	  arm_rfft_instance_q15 fft1;
	  arm_rfft_init_q15(&fft1, LENGTH_OF_FFT, 0, 1);
	  printgraph();
	  printnumbers();
  while (1)
  {


	  if(DMA1->ISR & DMA_ISR_HTIF1)
	  	{
		eraseplot();

		  arm_rfft_q15(&fft1, sampleloc1, outputloc);

		  testOutput[0]=0;
		  arm_max_q15(&outputloc[1], (LENGTH_OF_FFT*2)-1 ,&max ,&index);

		  freq = index/2;
			itoa(freq*(8), freqstring, 10);
//			GPIOC->ODR ^= GPIO_ODR_OD1;
//			UART_escapes("8");
//			UART_escapes("[K");
//			UART_print(freqstring);
//			GPIOC->ODR ^= GPIO_ODR_OD1;
			printmag(testOutput, (uint16_t)max);
			UART_escapes("[H");
			UART_escapes("[11C");
			UART_escapes("[K");
			UART_print(freqstring);



	  		DMA1->IFCR |= (DMA_IFCR_CHTIF1); //clear half transfer flag

//	  		DMA1->IFCR |= (DMA_IFCR_CGIF1);
	  	}
	  else if(DMA1->ISR & DMA_ISR_TCIF1)
	  	  	{



	  		  arm_rfft_q15(&fft1, sampleloc2, outputloc);
	  		  testOutput[0]=0;
	  		  arm_max_q15(&outputloc[1], (LENGTH_OF_FFT*2)-1 ,&max ,&index);
	  		  freq = index/2;
	  		itoa(freq*(2048/LENGTH_OF_FFT), freqstring, 10);
	  		UART_escapes("8");
	  		UART_escapes("[K");
	  		UART_print(freqstring);

	  	  		DMA1->IFCR |= (DMA_IFCR_CTCIF1); //clear half transfer flag

	  //	  		DMA1->IFCR |= (DMA_IFCR_CGIF1);
	  	  	}






    /* USER CODE END WHILE */

    /* USER CODE BEGIN 3 */
  }
  /* USER CODE END 3 */
}

/**
  * @brief System Clock Configuration
  * @retval None
  */
void SystemClock_Config(void)
{
  RCC_OscInitTypeDef RCC_OscInitStruct = {0};
  RCC_ClkInitTypeDef RCC_ClkInitStruct = {0};

  /** Configure the main internal regulator output voltage
  */
  if (HAL_PWREx_ControlVoltageScaling(PWR_REGULATOR_VOLTAGE_SCALE1) != HAL_OK)
  {
    Error_Handler();
  }
  /** Initializes the RCC Oscillators according to the specified parameters
  * in the RCC_OscInitTypeDef structure.
  */
  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_MSI;
  RCC_OscInitStruct.MSIState = RCC_MSI_ON;
  RCC_OscInitStruct.MSICalibrationValue = 0;
  RCC_OscInitStruct.MSIClockRange = RCC_MSIRANGE_6;
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
  RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_MSI;
  RCC_OscInitStruct.PLL.PLLM = 1;
  RCC_OscInitStruct.PLL.PLLN = 40;
  RCC_OscInitStruct.PLL.PLLP = RCC_PLLP_DIV7;
  RCC_OscInitStruct.PLL.PLLQ = RCC_PLLQ_DIV2;
  RCC_OscInitStruct.PLL.PLLR = RCC_PLLR_DIV2;
  if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
  {
    Error_Handler();
  }
  /** Initializes the CPU, AHB and APB buses clocks
  */
  RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK|RCC_CLOCKTYPE_SYSCLK
                              |RCC_CLOCKTYPE_PCLK1|RCC_CLOCKTYPE_PCLK2;
  RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_PLLCLK;
  RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
  RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV1;
  RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV1;

  if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_4) != HAL_OK)
  {
    Error_Handler();
  }
}

/* USER CODE BEGIN 4 */

/* USER CODE END 4 */

/**
  * @brief  This function is executed in case of error occurrence.
  * @retval None
  */
void Error_Handler(void)
{
  /* USER CODE BEGIN Error_Handler_Debug */
  /* User can add his own implementation to report the HAL error return state */
  __disable_irq();
  while (1)
  {
  }
  /* USER CODE END Error_Handler_Debug */
}

#ifdef  USE_FULL_ASSERT
/**
  * @brief  Reports the name of the source file and the source line number
  *         where the assert_param error has occurred.
  * @param  file: pointer to the source file name
  * @param  line: assert_param error line source number
  * @retval None
  */
void assert_failed(uint8_t *file, uint32_t line)
{
  /* USER CODE BEGIN 6 */
  /* User can add his own implementation to report the file name and line number,
     ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */
  /* USER CODE END 6 */
}
#endif /* USE_FULL_ASSERT */

