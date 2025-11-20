class MyStack():
    def __init__(self):
        self.top = -1
        self.data = []
    def push(self, e):
        self.data.append(e)
        self.top += 1
    def pop (self):
        if self.top == -1:
            raise IndexError('Stackis Empty')
        else:
            self.top -= 1
            return self.data.pop()
    def peek(self):
        if self.top < 0:
            raise IndexError('Stackis Empty')
        else:
            return self.data[self.top]
st = MyStack()
st.push('s')
st.push('t')
st.push('a')
st.push('c')
st.push('k')
print('top value:', st.top)
st.pop()
print('top value:', st.top)
print(st.peek())
