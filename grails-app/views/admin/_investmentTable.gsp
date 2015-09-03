
<g:if test="${investments.empty}">
    <center><h3 class="incaps">NO INVESTMENT IS IN ${tab_status} STATUS!!!</h3></center>
</g:if>
<g:else>
<table class="table table-row-cell" id="table_funds_pending">
    <tbody >
    <thead>
    <tr>
        <th class="dt-head-left">Investor User Name&nbsp;&nbsp;</th>
        <th class="dt-head-left">Investor Display Name&nbsp;&nbsp;</th>
        <th class="dt-head-left">Status&nbsp;&nbsp;</th>
        <th class="dt-head-left">Number of shares&nbsp;&nbsp;</th>
        <th class="dt-head-left">Total Cost&nbsp;&nbsp;</th>
        <th class="dt-head-left">Company Name&nbsp;&nbsp;</th>
        <th class="dt-head-left">Invested Company Profile&nbsp;&nbsp;</th>
        <th class="dt-head-left">Funding Profile&nbsp;&nbsp;</th>
        <th class="dt-head-left">Investor Profile&nbsp;&nbsp;</th>
        <th class="dt-head-left">Action&nbsp;&nbsp;</th>
    </tr>
    </thead>
    <tbody class="td-body-center">
    <g:each in="${investments}" var="invest">
        <tr id="investment_${tab_status}_${invest?.id}">
            <td class="dt-body-left">${invest.user.username}</td>
            <td class="dt-body-left">${invest.investor.investorDisplayName}</td>
            <td class="dt-body-left">${invest.investmentStatus.toString()}</td>
            <td class="dt-body-left">${invest.investedNumberOfShare}</td>
            <td class="dt-body-left">$${invest.totalCost}</td>
            <td class="dt-body-left">${invest.company.companyName}</td>
            <td class="dt-body-left">
                <a href="${createLink(controller: "admin", action: "modalCompanyProfile",params: [id:"${invest.company.id}"])}" style="text-decoration:none">&nbsp;&nbsp;&nbsp;View Profile</a>
            </td>
            <td class="dt-body-left">
                <a href="${createLink(controller: "investment", action: "fundingProfile",params: [id:"${invest.company.loan.id[0]}"])}" style="text-decoration:none">&nbsp;&nbsp;&nbsp;View Profile</a>
            </td>
            <td class="dt-body-left">
                <a href="${createLink(controller: "investment", action: "investorProfile",params: [id:"${invest.investor.id}"])}" style="text-decoration:none">&nbsp;&nbsp;&nbsp;View Profile</a>
            </td>


            <td class="dt-body-center" style="margin-right: 10px">
                <br/>
                <g:if test="${invest.investmentStatus.toString() != "Approved"}">
                    <a href="javascript:void(0)" class="btn btn-success btn-sm"
                       onclick="statusChangeByAjax('${invest.id}', '${com.InvestmentStatus.APPROVED.key}','${tab_status}')"><strong
                            style="color: black">Approve</strong></a>
                    <br/>
                </g:if>
                <g:if test="${invest.investmentStatus.toString() != "Rejected"}">
                    <a href="javascript:void(0)" class="btn btn-danger btn-sm"
                       onclick="statusChangeByAjax('${invest.id}', 'reject','${tab_status}')"><strong
                            style="color: black">Reject</strong></a>
                    <br/>
                </g:if>
            </td>
        </tr>
    </g:each>
    </tbody>
</table>
</g:else>


