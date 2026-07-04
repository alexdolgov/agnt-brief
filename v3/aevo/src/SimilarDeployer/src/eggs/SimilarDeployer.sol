// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import "./EggBase.sol";
import "../interfaces/ISocket.sol";

interface IPlug {
    function similarDeployer_address(address) external view returns (address);
}

contract SimilarDeployer is EggBase {
    address public immutable addressFilter__;

    ISocket public immutable socket__;
    IPlug public immutable plug__;
    address public immutable similarAddress__;

    constructor(
        address socket_,
        address plug_,
        address addressFilter_,
        address similarAddress_
    ) {
        socket__ = ISocket(socket_);
        plug__ = IPlug(plug_);
        addressFilter__ = addressFilter_;
        similarAddress__ = similarAddress_;
    }

    function egg(
        address msgSender,
        bytes calldata
    ) external view override returns (bool) {
        address senderDeployAddress = plug__.similarDeployer_address(msgSender);
        return
            (uint160(senderDeployAddress) & uint160(addressFilter__)) ==
            (uint160(similarAddress__) & uint160(addressFilter__));
    }
}
