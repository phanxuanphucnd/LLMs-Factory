from llmtuner import run_exp

from huggingface_hub import login

login("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")


def main():
    run_exp()


def _mp_fn(index):
    # For xla_spawn (TPUs)
    main()


if __name__ == "__main__":
    main()
