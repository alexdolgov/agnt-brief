// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.13;

import "./EggBase.sol";
import "../interfaces/ISocket.sol";
import "../interfaces/ISwitchboard.sol";

contract CaptureTheFees is EggBase {
    ISocket public immutable socket__;
    address public immutable fastSwitchboard;
    address public immutable optimisticSwitchboard;
    uint256 public immutable siblingChainSlug;
    constructor(
        address socket_,
        address fastSwitchboard_,
        address optimisticSwitchboard_,
        uint256 siblingChainSlug_
    ) {
        socket__ = ISocket(socket_);

        fastSwitchboard = fastSwitchboard_;
        optimisticSwitchboard = optimisticSwitchboard_;
        siblingChainSlug = siblingChainSlug_;
    }

    function egg(
        address,
        bytes calldata data
    ) external view override returns (bool) {
        (address plug) = abi.decode(
            data, (address)
        );

        (, , address outboundSwitchboard, , ) = socket__.getPlugConfig(
            plug,
            siblingChainSlug
        );

        if (outboundSwitchboard == address(0)) return false;

        if (
            outboundSwitchboard == fastSwitchboard ||
            outboundSwitchboard == optimisticSwitchboard
        ) return false;

        (uint256 fees, ) = ISwitchboard(outboundSwitchboard).getMinFees(
            uint32(siblingChainSlug)
        );

        if (fees == 0) return false;
        if (outboundSwitchboard.balance == 0) return false;

        return true;
    }
}
