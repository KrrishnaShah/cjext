/* Blink Example

   This example code is in the Public Domain (or CC0 licensed, at your option.)

   Unless required by applicable law or agreed to in writing, this
   software is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR
   CONDITIONS OF ANY KIND, either express or implied.
*/
#include <stdio.h>
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "driver/gpio.h"
#include "sdkconfig.h"

#include "trace.h"
#include "cjext.h"

#define LED_PIN_NUMBER GPIO_NUM_2

static void __blink_led(void);
static void __configure_led(void);

void app_main(void)
{

    const char *raw_json = "{\"office\":\"nds\"}";

    const char *test_json_string =
        "{"
        "\"name\": \"Krishna\","
        "\"bool\": true,"
        "\"number\":1234,"
        "\"surname\": \"Sah\","
        "\"null_array\":[],"
        "\"array\": [\"Ramesh\",\"Rajesh\",\"Lomas\",\"Nabin\",\"Riken\"],"
        "\"num-array\": [1, 10, 100, 1000],"
        "\"num-array\": [{},{}],"
        "\"obj-array\":[{\"abc\":\"dfg\",\"fsdf\":\"dfg\"},{\"abc\":\"dfg\",\"fsdf\":\"dfg\"}],"
        "\"obj-array\":[{\"name\":\"krishna\"},{\"name\":\"lomas\"}],"
        "\"object\": {\"slc\": \"2010\",\"hseb\": \"2012\",\"bachelore\": \"2016\"},"
        "\"object\": {\"slc\": 2010,\"hseb\": 2012,\"bachelore\": 2016,\"master\": 2024},"
        "\"null_obj\":{\"null-o\":{\"null-o\":{\"a\":[{},{}]}}},"
        "\"obj\":{\"obj1\":{},\"obj2\":{}}"
        "}";

    TRACE_D("size of 'test_json_string': %d\r\n\r\n", strlen(test_json_string));

    cJSON *cj_test = cJSON_ParseWithRef(test_json_string);
    if (cj_test)
    {
        // cJSON_AddRawToObject(cj_test, "raw", raw_json);
        int req_buffer_len = cJSON_EstimatePrintLength(cj_test);
        printf("\r\n\r\n");

        TRACE_D("req_buffer_len: %d", req_buffer_len);

        req_buffer_len += 10;
        char *test_str = malloc(req_buffer_len);

        if (test_str)
        {
            memset(test_str, '\0', req_buffer_len);

            if (1 == cJSON_PrintPreallocated(cj_test, test_str, req_buffer_len, true))
            {
                TRACE_D("size of 'test_str': %d", strlen(test_str));
                printf("\r\n\r\n");
                TRACE_D("test-str:\r\n%s", test_str);
                dump("json output", test_str, 0, strlen(test_str));
            }
            else
            {
                TRACE_E("PRINT FAILED");
            }
        }
        else
        {
            TRACE_E("malloc failed!");
        }
    }

    __configure_led();

    while (1)
    {
        __blink_led();
        vTaskDelay(CONFIG_BLINK_PERIOD / portTICK_PERIOD_MS);
    }
}

static void __blink_led(void)
{
    static uint32_t led_level;
    gpio_set_level(LED_PIN_NUMBER, led_level);
    TRACE_D("Turning the LED %s!", led_level ? "ON" : "OFF");
    led_level ^= 1;
}

static void __configure_led(void)
{
    gpio_config_t led_gpio = {
        .mode = GPIO_MODE_OUTPUT,
        .pin_bit_mask = (1 << LED_PIN_NUMBER),
        .intr_type = GPIO_INTR_DISABLE,
        .pull_up_en = GPIO_PULLUP_ENABLE,
        .pull_down_en = GPIO_PULLDOWN_DISABLE,
    };

    gpio_config(&led_gpio);
}