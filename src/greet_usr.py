#!/usr/bin/env python
# -*- coding: utf-8 -*-

import gradio

def main():
    with gradio.Blocks() as front_page:
        with gradio.Row():
            with gradio.Column():
                text_box = gradio.Textbox(label="write your name.")
                greet_button = gradio.Button(value="greet")
            with gradio.Column():
                result_box = gradio.Textbox(label="result")
        greet_button.click(fn=greet_user, inputs=text_box, outputs=result_box)
    front_page.launch(server_name="0.0.0.0")

def greet_user(input):
    return f"Hello, {input}!"

if __name__ == "__main__":
    main()

