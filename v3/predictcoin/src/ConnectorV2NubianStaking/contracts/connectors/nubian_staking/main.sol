pragma solidity ^0.7.0;
pragma experimental ABIEncoderV2;

/**
 * @title Venus.
 * @dev Lending & Borrowing.
 */

import {TokenInterface} from "../../common/interfaces.sol";
import {Stores} from "../../common/stores.sol";
import {Helpers} from "./helpers.sol";
import {Events} from "./events.sol";
import {IStaking} from "./interface.sol";

abstract contract NubianStakingResolver is Events, Helpers {
    /**
     * @dev Deposit Deposit number token
     * @param amt The amount of nubian a user wants to deposit)
     * @param lockPeriod The time the user wants to lock his token
     * @param getId ID to retrieve amt.
     * @param setId ID stores the amount of tokens deposited.
     */
    function deposit(
        uint256 amt,
        uint256 lockPeriod,
        uint256 getId,
        uint256 setId
    )
        public
        payable
        returns (string memory _eventName, bytes memory _eventParam)
    {
        uint256 _amt = getUint(getId, amt);

        rewardToken.approve(address(staking), _amt);

        uint256 recordId = staking.stake(_amt, lockPeriod);

        setUint(setId, _amt);

        _eventName = "LogDeposit(uint256,uint256,uint256,uint256)";
        _eventParam = abi.encode(recordId, amt, getId, setId);
    }

    /**
     * @dev withdraw withdraw number token
     * @param recordId The recordId of user deposit record
     * @param getId ID to retrieve amt.
     * @param setId ID stores the amount of tokens deposited.
     */
    function withdraw(
        uint256 recordId,
        uint256 getId,
        uint256 setId
    )
        public
        payable
        returns (string memory _eventName, bytes memory _eventParam)
    {
        staking.withdraw(recordId);

        _eventName = "LogDeposit(uint256,uint256,uint256)";
        _eventParam = abi.encode(recordId, getId, setId);
    }
}

contract ConnectorV2NubianStaking is NubianStakingResolver {
    string public name = "NubianStaking-v1";
}
