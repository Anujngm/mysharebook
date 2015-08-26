package com


public enum InvestmentStatus {
    PENDING('Pending'),
    APPROVED('Approved'),
    REJECTED('Rejected')

    final String value
   InvestmentStatus(String value)
    {
        this.value=value
    }

String toString(){
    return this.value
}

    String getValue(){
        return value
    }

}