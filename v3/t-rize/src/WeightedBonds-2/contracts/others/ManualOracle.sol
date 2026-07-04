// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

import {IOracle} from "./../interfaces/IOracle.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

/* solhint-disable */
/**
 * Taken from: https://github.com/pimlicolabs/erc20-paymaster/blob/main/src/oracles/ManualOracle.sol
 */
contract ManualOracle is IOracle, Ownable {
    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                       CUSTOM ERRORS                        */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/
    /// @dev Invalid price, can't be negative or zero
    error InvalidPrice();

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                           EVENTS                           */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/
    /// @dev Emitted when the price is updated
    event UpdatedPrice(int256 _price);

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                  CONSTANTS AND IMMUTABLES                  */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    /// @dev Current price, can be updated by the owner
    int256 public price;

    constructor(int256 _price, address _owner) Ownable(_owner) {
        _setPrice(_price);
    }

    function _setPrice(int256 _price) internal {
        if (_price <= 0) revert InvalidPrice();

        price = _price;

        emit UpdatedPrice(_price);
    }

    function setPrice(int256 _price) external onlyOwner {
        _setPrice(_price);
    }

    function decimals() external pure override returns (uint8) {
        return 8;
    }

    function latestRoundData()
        external
        view
        override
        returns (
            uint80 roundId,
            int256 answer,
            uint256 startedAt,
            uint256 updatedAt,
            uint80 answeredInRound
        )
    {
        return (uint80(0), price, 0, block.timestamp, uint80(0));
    }
}
