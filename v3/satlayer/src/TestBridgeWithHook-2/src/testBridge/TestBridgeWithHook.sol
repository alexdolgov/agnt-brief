// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.25;

import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "../interfaces/circle/ITokenMessenger.sol";

contract TestBridgeWithHook is Ownable {
    using SafeERC20 for IERC20;

    address public constant USDC = 0xA0b86991c6218b36c1d19D4a2e9Eb0cE3606eB48;
    address public constant CIRCLE_BRIDGE = 0x28b5a0e9C621a5BadaA536219b3a228C8168cf5d;

    constructor() Ownable(msg.sender) {}

    function bridge(address _token, address _receiver, uint256 _amount) public onlyOwner {
        require(_token == USDC, "Invalid asset");

        if (_amount == type(uint256).max) {
            _amount = IERC20(USDC).balanceOf(address(this));
        }

        IERC20(USDC).approve(CIRCLE_BRIDGE, _amount);
        bytes32 recieverBytes_ = bytes32(abi.encode(_receiver));

        uint256 maxFee = 0;

        bytes memory hookData = buildHookData(_receiver);
        // ITokenMessenger(getStorage().circleBridge).depositForBurn(_amount, uint32(3), recieverBytes_, USDC, bytes32(0), maxFee, 2000);
        ITokenMessenger(CIRCLE_BRIDGE).depositForBurnWithHook(
            _amount, uint32(19), recieverBytes_, USDC, bytes32(0), maxFee, 2000, hookData
        );
    }

    function buildHookData(address L2Receiver) public pure returns (bytes memory hookData) {
        hookData = abi.encodePacked(
            bytes24("cctp-forward"), // bytes 0-23
            uint32(0), // bytes 24-27: hookVersion
            uint32(24), // bytes 28-31: hookDataLength
            L2Receiver, // bytes 32-51: forwardRecipient
            uint32(0) // bytes 52-55: The destinationDexId on HyperCore (0 for perp and uint32.max for spot)
        );

        // 强校验长度，防止改坏
        require(hookData.length == 56, "Invalid hook data length");
    }
}
