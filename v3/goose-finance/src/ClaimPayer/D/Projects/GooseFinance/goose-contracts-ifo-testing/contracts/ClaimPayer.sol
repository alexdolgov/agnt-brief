// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.6.12;
import "./libs/IBEP20.sol";
import "./libs/SafeBEP20.sol";

contract ClaimPayer {
    using SafeBEP20 for IBEP20;

    address adminAddress;
    address fundAddress;
    IBEP20 busd;

    event SendPayment(address claimant, uint256 amount);

    constructor (address _adminAddress, address _fundAddress) public {
        adminAddress = _adminAddress;
        fundAddress = _fundAddress;
        busd = IBEP20(0xe9e7CEA3DedcA5984780Bafc599bD69ADd087D56);
    }

    modifier onlyAdmin() {
        require(msg.sender == adminAddress, "ONLY ADMIN");
        _;
    }

    function pay(address claimant, uint256 amount) external onlyAdmin {
        busd.safeTransfer(claimant, amount);
        emit SendPayment(claimant, amount);
    }

    function withdrawFunds(IBEP20 token) external onlyAdmin {
        uint256 balance = token.balanceOf(address(this));
        token.safeTransfer(fundAddress, balance);
    }
}
