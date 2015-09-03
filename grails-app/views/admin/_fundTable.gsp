<g:if test="${funding.empty}">
    <center><h3 class="incaps">NO FUND IS IN ${tab_status} STATUS!!!</h3></center>
</g:if>
<g:else>
<table id="table_funds_pending">
    <tbody class="table table-row-cell">
    <thead>
    <tr>
        <th class="dt-head-left">Company Name&nbsp;&nbsp;</th>
        <th class="dt-head-left ">Amount Required&nbsp;&nbsp;</th>
        <th class="dt-head-left">Loan Tenure&nbsp;&nbsp;</th>
        <th class="dt-head-left">Rate of Interest&nbsp;&nbsp;</th>
        <th class="dt-head-left">Repayment Scheme&nbsp;&nbsp;</th>
        <th class="dt-head-left">Capital per Share&nbsp;&nbsp;</th>
        <th class="dt-head-left">Date of submission&nbsp;&nbsp;</th>
        <th class="dt-head-left">Status&nbsp;&nbsp;</th>
        <th class="dt-head-left">Company Profile</th>
        <th class="dt-head-right">Action&nbsp;&nbsp;&nbsp;</th>
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
            <td class="dt-body-left">

                <a data-toggle="modal" data-dismiss="modal"
                   href="${createLink(controller: "admin", action: "modalCompanyProfile",params: [id:"${fund.company.id}"])}" style="text-decoration:none">&nbsp;&nbsp;&nbsp;View Profile</a>
            </td>
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
                       onclick="statusChangeByAjax('${fund.id}', 'reject','${tab_status}')"><strong
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
</g:else>


