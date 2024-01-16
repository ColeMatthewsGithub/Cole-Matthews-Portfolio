class Jar:
    def __init__(self, capacity=12):
        self.capacity = capacity
        self.size = 0

    def __str__(self):
        #ii = None
        #i = 0
        #for i in self.size:
        #    ii = ii + "🍪"
        #    i += 1
        #return ii
        ii = self.size * "🍪"
        return ii
######################################
    def deposit(self, n):
        if self.size + n > self.capacity:
            raise ValueError("Deposit error")
        else:
            self.size = self.size + n

    def withdraw(self, n):
        if n > self.size:
            raise ValueError("Withdraw error")
        else:
            self.size = self.size - n
#####################################
    @property
    def capacity(self):
        return self.__capacity

    @capacity.setter
    def capacity(self, capacity):
        self.__capacity = capacity
#####################################
    @property
    def size(self):
        return self.__size

    @size.setter
    def size(self, size):
        self.__size = size
#####################################
jar = Jar()
jar.deposit(5)
print(jar)
jar.deposit(6)
print(jar)
jar.withdraw(6)
print(jar)
jar.withdraw(5)
print(jar)
