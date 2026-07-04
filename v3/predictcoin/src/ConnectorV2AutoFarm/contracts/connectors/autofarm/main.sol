pragma solidity ^0.7.0;

/**
 * @title Autofarm.
 * @dev Deposit, Withdraw and harvest lp tokens from Autofarm.
 */

import {IAutoFarm} from "./interface.sol";
import {DSMath} from "../../common/math.sol";
import {TokenInterface} from "../../common/interfaces.sol";
import {Basic} from "../../common/basic.sol";
import {Events} from "./events.sol";
import {Helpers} from "./helpers.sol";

abstract contract AutoFarmResolver is Events, Helpers {
    /**
     * @dev Deposit function
     * @notice Deposit lp tokens to autofarm
     * @param lpToken Address of the lp token contract
     * @param amt The amount of lp token to deposit.
     * @param poolId The pool id of the autofarm lp vault
     * @param getId ID to retrieve amt
     * @param setId ID stores the amount of tokens deposited
     */
    function deposit(
        address lpToken,
        uint256 amt,
        uint256 poolId,
        uint256 getId,
        uint256 setId
    )
        public
        payable
        returns (string memory _eventName, bytes memory _eventParam)
    {
        uint256 _amt = getUint(getId, amt);

        TokenInterface lpTokenContract = TokenInterface(lpToken);
        _amt = _amt == uint256(-1)
            ? lpTokenContract.balanceOf(address(this))
            : _amt;
        lpTokenContract.approve(address(autoFarmV2), _amt);

        autoFarmV2.deposit(poolId, _amt);

        _eventName = "LogDeposit(address,uint256,uint256,uint256,uint256)";
        _eventParam = abi.encode(lpToken, _amt, poolId, getId, setId);
    }

    /**
     * @dev Withdraw function
     * @notice Withdraw lp tokens to autofarm
     * @param amt The amount of lp token to Withdraw.
     * @param poolId The pool id of the autofarm lp vault
     * @param getId ID to retrieve amt
     * @param setId ID stores the amount of tokens deposited
     */
    function withdraw(
        uint256 amt,
        uint256 poolId,
        uint256 getId,
        uint256 setId
    )
        public
        payable
        returns (string memory _eventName, bytes memory _eventParam)
    {
        uint256 _amt = getUint(getId, amt);

        if (_amt == uint256(-1)) {
            autoFarmV2.withdrawAll(poolId);
        } else {
            autoFarmV2.withdraw(poolId, _amt);
        }

        _eventName = "LogWithdraw(uint256,uint256,uint256,uint256)";
        _eventParam = abi.encode(_amt, poolId, getId, setId);
    }

    /**
     * @dev Harvest function
     * @notice Harvest auto tokens from autofarm
     * @param poolId The pool id of the autofarm lp vault
     * @param getId ID to retrieve amt
     * @param setId ID stores the amount of tokens deposited
     */
    function harvest(
        uint256 poolId,
        uint256 getId,
        uint256 setId
    )
        public
        payable
        returns (string memory _eventName, bytes memory _eventParam)
    {
        uint256 _amt = autoFarmV2.pendingAUTO(poolId, address(this));

        if (_amt != 0) {
            autoFarmV2.withdraw(poolId, 0);
        }

        _eventName = "LogWithdraw(uint256,uint256,uint256,uint256)";
        _eventParam = abi.encode(_amt, poolId, getId, setId);
    }
}

contract ConnectorV2AutoFarm is AutoFarmResolver {
    string public name = "Autofarm-v1";
}
