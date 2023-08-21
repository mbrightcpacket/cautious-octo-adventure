#!/usr/bin/env python3

import argparse

def init_argparse() -> argparse.ArgumentParser:
    parser = argparse.ArgumentParser(
        usage="%(prog)s --arm [URL] --ui [URL]",
        description="Print the Markdown for Azure buttons.",
    )

    parser.add_argument("-a","--arm", required=True, help="URL to ARM template")
    parser.add_argument("-u","--ui", required=True, help="URL to createUiDefinition.json file")

    return parser


def main() -> None:

    parser = init_argparse()
    args = parser.parse_args()

    if args.arm is None or args.ui is None:
        parser.print_help()
        exit(1)


if __name__ == "__main__":
    main()
