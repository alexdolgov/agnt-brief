// SPDX-License-Identifier: MIT
pragma solidity ^0.6.12;
pragma experimental ABIEncoderV2;

import "@openzeppelin/contracts/access/Ownable.sol";
import "bsc-library/contracts/IBEP20.sol";
import "bsc-library/contracts/SafeBEP20.sol";

/** @title GalPCSAirDrop
*/
contract GalPCSAirDrop is Ownable {
    using SafeBEP20 for IBEP20;

    IBEP20 public immutable galToken;

    /**
     * @notice It initializes the contract.
     * @param _galTokenAddress: the address of the GAL token
     */
    constructor(address _galTokenAddress) public {
        galToken = IBEP20(_galTokenAddress);
    }

    function doAirDrop(address[] calldata _address, uint256 _amount) external onlyOwner {
        for (uint256 i = 0; i < _address.length; i++) {
            galToken.safeTransfer(_address[i], _amount);
        }
    }
}
