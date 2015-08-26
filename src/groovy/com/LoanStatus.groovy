package com

public enum LoanStatus {
    PENDING('Pending'),
    APPROVED('Approved'),
    REJECTED('Rejected'),
    COMPLETED('Completed')

    final String value

    LoanStatus(String value)
    {
        this.value=value
    }

    String toString() {
        return this.value
    }
    String getValue(){
        return value
    }
    String getKey(){
        return name()
    }
}