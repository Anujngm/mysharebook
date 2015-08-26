<%@ page import="com.LoanStatus" %>
<table id="table_funds_pending" style="width: 90%;margin-left: inherit"
       class="table table-row-cell">
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

            <tr id="company_${fund?.id}">

                <td class="dt-body-left">${fund.company.companyName}</td>
                <td class="dt-body-left">$${fund.amount}</td>
                <td class="dt-body-left">${fund.loanTenure}&nbsp;${fund.loanTenureMonthOrYear}</td>
                <td class="dt-body-left">${fund.rateOfInterest}%</td>
                <td class="dt-body-left">${fund.repaymentScheme}</td>
                <td class="dt-body-left">$${fund.capitalPerShare}</td>
                <td class="dt-body-left">${fund.dateCreated.dateString}</td>
                <td class="dt-body-left">${fund.loanStatus.toString()}</td>
                <td class="dt-body-center">
                    <div class="row">
                        <a href="javascript:void(0)" class="btn btn-success"
                           onclick="statusChangeByAjax('${fund.id}', '${LoanStatus.APPROVED.key}')"><strong
                                style="color: black">Approve</strong></a>
                        <a href="javascript:void(0)" class="btn btn-danger"
                           onclick="statusChangeByAjax('${fund.id}', '${LoanStatus.REJECTED.key}')"><strong
                                style="color: black">Reject</strong></a>
                        <a href="javascript:void(0)" class="btn btn-primary"
                           onclick="statusChangeByAjax('${fund.id}', '${LoanStatus.COMPLETED.key}')"
                           style="margin-top: 3px"><strong style="color: black">Complete</strong>
                        </a>
                    </div>
                </td>
            </tr>
    </g:each>
    </tbody>
</table>
