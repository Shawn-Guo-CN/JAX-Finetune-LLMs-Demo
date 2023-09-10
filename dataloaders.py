import re
import json
from typing import List, Dict

import jax
import jax.numpy as jnp
import tensorflow as tf
import tensorflow_datasets as tfds


def get_dataset():
    pass


def get_alpaca_instructions(path='./data/alpaca_data.json'):
    instruction_list = []
    with open(path) as f:
        data = json.load(f)
        for instruction in data:
            instruction_list.append(instruction)
    return instruction_list


def encode_alpaca_prompt(instruction:Dict):
    """Encode an instruction into a single string."""
    (instruction, input, output) = instruction["instruction"], \
                                   instruction["input"], \
                                   instruction["output"]
    instruction = re.sub(r"\s+", " ", instruction).strip().rstrip(":")
    prompt = f"{instruction}" if input.lower() == "" else \
                f"{instruction}\n {input}"
    return {'input': prompt, 'output': output}

