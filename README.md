# Draw-lots

`draw.sh`  is a shell script that can help you randomly pick a choice (picking multiple choices is also supported) from several options.

## Usage

```
./draw.sh [-n num_of_chosen] [option1] [option2] [option3]
```

- `-n` how many options you want to pick
  - If not given, default is 1

## Example

```
./draw.sh apple banana mango
mango
```

```
./generate.sh -n 5
OZKBQg2iSKi
PBFbLYsPv3IF
x4IjAu8HhaYO
LByVKbqUCW
1FWI3EAwLeT
```

```
./draw.sh -n 2 apple banana mango
banana
apple
```

