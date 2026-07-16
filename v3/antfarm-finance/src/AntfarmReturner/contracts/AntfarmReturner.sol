// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "./interfaces/IOFTCore.sol";

contract AntfarmReturner {
    address immutable antfarmTokenOFT;
    address immutable destination;
    uint16 immutable dstChainId;

    uint256 totalSentBack;

    constructor(
        address _antfarmTokenOFT,
        address _destination,
        uint16 _dstChainId
    ) {
        antfarmTokenOFT = _antfarmTokenOFT;
        destination = _destination;
        dstChainId = _dstChainId;
    }

    function sendATFBack(
        address _zroPaymentAddress,
        bytes calldata _adapterParams
    ) public payable {
        uint256 amount = IERC20(antfarmTokenOFT).balanceOf(
            address(this)
        );
        totalSentBack += amount;

        (uint feeToPay, ) = IOFTCore(antfarmTokenOFT).estimateSendFee(dstChainId, abi.encodePacked(destination), amount, false, _adapterParams);

        IOFTCore(antfarmTokenOFT).sendFrom{value: feeToPay}(
            address(this),
            dstChainId,
            abi.encodePacked(destination),
            amount,
            payable(msg.sender),
            _zroPaymentAddress,
            _adapterParams
        );
    }
}
