\name{migration on baidu}
\alias{mig}
\title{baidumig}
\usage{
cityrank(city,direction,riqi)
  city��Ϊ��ȡ�ĳ������ƣ����������������С������确�����С�
  direcion�� ΪǨ��Ǩ�����򣬿�ѡ 'in' �� 'out'
  riqi�� Ϊ���ڣ���ʽΪ20200203 ���ִ�������
�������ؽ��Ϊ���ݿ�

migscale(city,direction)
  city��Ϊ��ȡ�ĳ������ƣ����������������С������确�����С�
  direcion�� ΪǨ��Ǩ�����򣬿�ѡ 'in' �� 'out'
�������ؽ��Ϊ���ݿ�
}
\description{
�ٶ�Ǩ��������ȡ
1.cityrank ��ȡ���м�Ǩ�����
2.migscale ��ȡ����Ǩ���ģ
3.�������ó��д������ݿ�citycode
}
\examples{
cityrank('������','in',20200201)
migscale('������','in')
}