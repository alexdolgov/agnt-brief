pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract VaultReferralTreasury is Ownable {
    IERC20 public posi = IERC20(0x5CA42204cDaa70d5c773946e69dE942b85CA6706);
    mapping(address => bool) public operators;
    event OperatorUpdated(address indexed operator, bool indexed status);
    event VaultReferralTreasuryOutOfReward();

    modifier onlyOperator {
        require(operators[msg.sender], "Operator: caller is not the operator");
        _;
    }

    function setOperator(address _operator, bool _status) public onlyOwner {
        operators[_operator] = _status;
        emit OperatorUpdated(_operator, _status);
    }

    function payReferralCommission(address _address, uint256 _rewards) public onlyOperator returns (bool) {
        if(posi.balanceOf(address(this)) > _rewards)
            return posi.transfer(_address, _rewards);
        else
        {
            // notify external services to fill the rewards
            emit VaultReferralTreasuryOutOfReward();
            return false;
        }
    }
}
