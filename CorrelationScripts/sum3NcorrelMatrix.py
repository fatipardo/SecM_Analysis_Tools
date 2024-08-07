from numpy import *
from scipy import *
import optparse


def main():
    p = optparse.OptionParser()
    p.add_option('--inMatrix', '-m', default="./inputMatrix.mtx")
   
    options, arguments = p.parse_args()

    inMatrix=(options.inMatrix)

    nmatrix= genfromtxt(inMatrix, float)

    for i in range(0,len(nmatrix),3):
        lineout=""
        for j in range(0,len(nmatrix),3):
            sum=0
            for k in range(0,3):
                sum+=abs(nmatrix[k+j,k+i])
            lineout+="%f " % (sum/3.0)
        print(lineout)



if __name__ == '__main__':
    main()


