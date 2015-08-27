<table id="table_funds_pending" style="width: 95%">
    <tbody class="table table-row-cell">
    <thead>
    <tr>
        <th class="dt-head-left">Company Name</th>
        <th class="dt-head-left">Amount Required</th>
        <th class="dt-head-left">Loan Tenure</th>
        <th class="dt-head-left">Rate of Interest</th>
        <th class="dt-head-left">Repayment Scheme</th>
        <th class="dt-head-left">Capital per Share</th>
        <th class="dt-head-left">Date of submission</th>
        <th class="dt-head-left">Status</th>
        <th class="dt-head-left">Action</th>
    </tr>
    </thead>
    <tbody class="td-body-center">
    <g:each in="${funding}" var="fund">
        <tr id="fund_${tab_status}_${fund?.id}">

            <td class="dt-body-left">${fund.company.companyName}</td>
            <td class="dt-body-left">$${fund.amount}</td>
            <td class="dt-body-left">${fund.loanTenure}&nbsp;${fund.loanTenureMonthOrYear}</td>
            <td class="dt-body-left">${fund.rateOfInterest}%</td>
            <td class="dt-body-left">${fund.repaymentScheme}</td>
            <td class="dt-body-left">$${fund.capitalPerShare}</td>
            <td class="dt-body-left">${fund.dateCreated.dateString}</td>
            <td class="dt-body-left">${fund.loanStatus.toString()}</td>
            <td class="dt-body-center" style="margin-right: 10px">
                <br/>
                <g:if test="${fund.loanStatus.toString() != "Approved"}">
                    <a href="javascript:void(0)" class="btn btn-success btn-sm"
                       onclick="statusChangeByAjax('${fund.id}', '${com.LoanStatus.APPROVED.key}','${tab_status}')"><strong
                            style="color: black">Approve</strong></a>
                    <br/>
                </g:if>
                <g:if test="${fund.loanStatus.toString() != "Rejected"}">
                    <a href="javascript:void(0)" class="btn btn-danger btn-sm"
                       onclick="statusChangeByAjax('${fund.id}', '${com.LoanStatus.REJECTED.key}','${tab_status}')"><strong
                            style="color: black">Reject</strong></a>
                    <br/>
                </g:if>
                <g:if test="${fund.loanStatus.toString() != "Completed"}">
                    <a href="javascript:void(0)" class="btn btn-primary btn-sm"
                       onclick="statusChangeByAjax('${fund.id}', '${com.LoanStatus.COMPLETED.key}','${tab_status}')"
                       style="margin-top: 3px"><strong style="color: black">Complete</strong>
                    </a>
                    <br/>
                </g:if>
            </td>
        </tr>
    </g:each>
    </tbody>
</table>
