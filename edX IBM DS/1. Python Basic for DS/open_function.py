# Reading files with open
# Writing files with open

File1 = open("/resources/data/Examples2.txt", "w")
print(File1.name)
print(File1.mode)
File1.close

with open("Example1.txt", "r") as File2:
    file_stuff = File1.readlines()
    print(file_stuff)
    for line in File1:
        print(line)

print(File1.closed)

with open("Example1.txt", "w") as File3:
    File3.write("Hello world\n")

with open("Example1.txt", "r") as readfile:
    with open("Example3.txt", "w") as writefile:
        for line in readfile:
            writefile.write(line)
