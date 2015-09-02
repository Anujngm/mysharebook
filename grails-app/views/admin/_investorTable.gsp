

        <tr id="fund_${investor.id}">
            <td class="dt-body-left">${investor.investorDisplayName}</td>
            <td class="dt-body-left">$${investor.investorListofInterest}</td>
            <td class="dt-body-left">${investor.investorCategory}</td>
            <td class="dt-body-left"><a href="${createLink(controller: "admin",action: "showInvestorUserProfile",params: [id:investor.user.id])}">View</a> </td>
            <td class="dt-body-left"><a href="${createLink(controller: "admin",action: "showInvestorInvestmentProfile",params: [id:investor.user.id])}">View</a> </td>
        </tr>


