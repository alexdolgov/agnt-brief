// SPDX-License-Identifier: MIT

pragma solidity >=0.8.4;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

struct Signature {
    uint8 v;
    bytes32 r;
    bytes32 s;
}

struct ClipperSwapParams {
        uint256 packedInput;
        uint256 packedOutput;
        uint256 goodUntil;
        bytes32 r;
        bytes32 vs;
}

interface ClipperCommonInterface {
    function swap(address inputToken, address outputToken, uint256 inputAmount, uint256 outputAmount, uint256 goodUntil, address destinationAddress, Signature calldata theSignature, bytes calldata auxiliaryData) external;
    function nTokens() external view returns (uint);
    function tokenAt(uint i) external view returns (address);
}

interface IResolver {
    function resolveOrders(address resolver, bytes calldata tokensAndAmounts, bytes calldata data) external;
}

contract ClipperResolver is IResolver, Ownable {
    error OnlySettlement();

    using SafeERC20 for IERC20;

    address private immutable SETTLEMENT_CONTRACT;
    address private immutable CLIPPER_EXCHANGE;

    bytes public IDENTIFYING_STRING = "ClipperFusion";

    constructor(address _settlementContract, address _clipperExchange, address _theOwner) {
        SETTLEMENT_CONTRACT = _settlementContract;
        CLIPPER_EXCHANGE = _clipperExchange;
        transferOwnership(_theOwner);
    }

    function resolveOrders(address resolver, bytes calldata tokensAndAmounts, bytes calldata data) external {
        if (msg.sender != SETTLEMENT_CONTRACT) revert OnlySettlement();

        if (data.length > 0) {
            ClipperSwapParams memory swapParams = abi.decode(
                data,
                (ClipperSwapParams)
            );
            (uint256 inputAmount, address inputContractAddress) = unpackAmountAndAddress(swapParams.packedInput);
            (uint256 outputAmount, address outputContractAddress) = unpackAmountAndAddress(swapParams.packedOutput);
            bytes32 _vs = swapParams.vs;
            bytes32 s = _vs & 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff;
            uint8 v = 27 + uint8(uint256(_vs) >> 255);
            Signature memory theSignature = Signature(v,swapParams.r,s);
            
            IERC20(inputContractAddress).safeTransfer(CLIPPER_EXCHANGE, inputAmount);
            ClipperCommonInterface(CLIPPER_EXCHANGE).swap(inputContractAddress, outputContractAddress, inputAmount, outputAmount, swapParams.goodUntil, address(this), theSignature, IDENTIFYING_STRING);

            IERC20(outputContractAddress).safeTransfer(SETTLEMENT_CONTRACT, uint256(bytes32(tokensAndAmounts[32:64])));
        }
    }

    function rescueFunds(IERC20 token) external {
        token.safeTransfer(owner(), token.balanceOf(address(this)));
    }

    function tokenEscapeAll() external {
        uint n = ClipperCommonInterface(CLIPPER_EXCHANGE).nTokens();
        for (uint i = 0; i < n; i++) {
            address token = ClipperCommonInterface(CLIPPER_EXCHANGE).tokenAt(i);
            uint256 toSend = IERC20(token).balanceOf(address(this));
            if(toSend > 1){
                toSend = toSend - 1;
            }
            IERC20(token).safeTransfer(owner(), toSend);
         }
    }

    function unpackAmountAndAddress(uint256 amountAndAddress) internal pure returns (uint256 amount, address contractAddress) {
        // uint256 -> uint160 automatically takes just last 40 hexchars
        contractAddress = address(uint160(amountAndAddress));
        // shift over the 40 hexchars to capture the amount
        amount = amountAndAddress >> 160;
    }
}