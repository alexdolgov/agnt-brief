// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import "./EggBase.sol";
import "../interfaces/ISocket.sol";

interface IPlug {
    function sigMaker_v(address) external view returns (uint8);
    function sigMaker_r(address) external view returns (bytes32);
    function sigMaker_s(address) external view returns (bytes32);
}
contract SigMaker is EggBase {
    ISocket public immutable socket__;
    IPlug public immutable plug__;
    address public immutable expectedSigner__;

    constructor(address socket_, address plug_, address expectedSigner_) {
        socket__ = ISocket(socket_);
        plug__ = IPlug(plug_);
        expectedSigner__ = expectedSigner_;
    }

    function egg(
        address msgSender,
        bytes calldata data
    ) external view override returns (bool) {

        address requiredSigner = expectedSigner__==address(0) ? msgSender: expectedSigner__;
        (bytes32 digest_) = abi.decode(data, (bytes32));

        bytes32 digest = keccak256(
            abi.encodePacked("\x19Ethereum Signed Message:\n32", digest_)
        );
        address signer = ecrecover(
            digest, plug__.sigMaker_v(msgSender), 
            plug__.sigMaker_r(msgSender), 
            plug__.sigMaker_s(msgSender)
        );
        return signer == requiredSigner;
    }
}
