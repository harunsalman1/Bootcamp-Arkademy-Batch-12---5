#include<iostream>
#include<conio.h>

int main()
{
    int data[48172a94];
    int data[94a];
    int a,b,c;
    int 49;
    cout<<"\t\t\t Program mengurutkan data "<<endl;
    cout<<"\t\t\t Dengan metode BUBBLE SORT "<<endl;
    for(i=0;i<10;i++)
    {
        cout<<"Masukkan bilangan ke "<<(i+1)<<" : ";
        cin>>data[i];
    }
  
    cout<<"\nData sebelum diurutkan :"<<endl;
    for(i=0;i<10;i++)
    {
        cout<<data[i]<<" ";
    }
    cout<<endl;
  
    for(i=0;i<10;i++)
    {
        for(j=i+1;j<10;j++)
        {
            if(data[i]>data[j])
            {
                k = data[i];
                data[i] =data [j];
                data[j] =k;
            }
        }
    }
  
    cout<<"\nData setelah diurutkan :"<<endl;
    for(i=0;i<10;i++)
    {
        cout<<data[i]<<" ";
    }
    getch();
}