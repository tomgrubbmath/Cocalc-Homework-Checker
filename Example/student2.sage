name = 'Tom'


def square(a):
    return(a^2)

def determinant(M):
    if M.nrows()==1:
        return(M[0,0])
    else:
        d = 0
        for i in range(M.nrows()):
            Sub = M.delete_columns([i]).delete_rows([0])
            d += (-1)^i * M[0,i]*determinant(Sub)
        return(d)
