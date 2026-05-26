// SPDX-License-Identifier: MIT

pragma solidity >=0.8.0 <0.9.0;

import '@openzeppelin/contracts/token/ERC20/IERC20.sol';
import '@openzeppelin/contracts/token/ERC721/IERC721Receiver.sol';
import '../interface/IGateway.sol';
import '../manager/IManager.sol';
import '../library/Consts.sol';
import '../library/Errors.sol';
import '../library/ETHAndERC20.sol';
import './SmartAccountStorage.sol';

contract SmartAccountImplementation is SmartAccountStorage {

    using ETHAndERC20 for address;

    address public immutable manager;

    address public immutable tokenB0;

    modifier _onlyExecutorOrOwner_() {
        require(
            IManager(manager).isExecutor(msg.sender) || msg.sender == owner,
            Errors.ONLY_EXECUTOR_OR_OWNER
        );
        _;
    }

    constructor (address manager_, address tokenB0_) {
        manager = manager_;
        tokenB0 = tokenB0_;
    }

    function getGateway(uint256 gatewayIdx) public view returns (address) {
        return IManager(manager).getGateway(gatewayIdx);
    }

    function getOpGas(uint256 opIndex) external view returns (address bToken, uint256 amount) {
        return _getOpGas(opIndex);
    }

    function claimUnusedIChainExecutionFee(uint256 gatewayIdx, uint256 pTokenId) external {
        address gateway = getGateway(gatewayIdx);
        IGateway(gateway).claimUnusedIChainExecutionFee(pTokenId, false);
    }

    function requestAddMargin(
        uint256 gatewayIdx,
        uint256 pTokenId,
        address bToken,
        uint256 bAmount
    ) external payable _onlyExecutorOrOwner_
    {
        address gateway = getGateway(gatewayIdx);
        if (bToken == Consts.TOKEN_ETH) {
            IGateway(gateway).requestAddMargin{value: bAmount}(
                pTokenId,
                bToken,
                bAmount,
                true
            );
        } else {
            _approve(bToken, gateway, bAmount);
            IGateway(gateway).requestAddMargin(
                pTokenId,
                bToken,
                bAmount,
                true
            );
        }
        _payGas(Consts.OP_INDEX_ADD_MARGIN);
    }

    function requestRemoveMargin(
        uint256 gatewayIdx,
        uint256 pTokenId,
        address bToken,
        uint256 bAmount
    ) external payable _onlyExecutorOrOwner_
    {
        address gateway = getGateway(gatewayIdx);
        IGateway(gateway).requestRemoveMargin{value: msg.value}(
            pTokenId,
            bToken,
            bAmount
        );
        _payGas(Consts.OP_INDEX_REMOVE_MARGIN);
    }

    function requestTrade(
        uint256 gatewayIdx,
        uint256 pTokenId,
        bytes32 symbolId,
        int256[] memory tradeParams
    ) external payable _onlyExecutorOrOwner_
    {
        address gateway = getGateway(gatewayIdx);
        IGateway(gateway).requestTrade{value: msg.value}(
            pTokenId,
            symbolId,
            tradeParams
        );
        _payGas(Consts.OP_INDEX_TRADE);
    }

    function requestAddMarginAndTrade(
        uint256 gatewayIdx,
        uint256 pTokenId,
        address bToken,
        uint256 bAmount,
        bytes32 symbolId,
        int256[] calldata tradeParams
    ) external payable _onlyExecutorOrOwner_
    {
        address gateway = getGateway(gatewayIdx);
        if (bToken == Consts.TOKEN_ETH) {
            IGateway(gateway).requestAddMarginAndTrade{value: bAmount + msg.value}(
                pTokenId,
                bToken,
                bAmount,
                symbolId,
                tradeParams,
                true
            );
        } else {
            _approve(bToken, gateway, bAmount);
            IGateway(gateway).requestAddMarginAndTrade{value: msg.value}(
                pTokenId,
                bToken,
                bAmount,
                symbolId,
                tradeParams,
                true
            );
        }
        _payGas(Consts.OP_INDEX_ADD_MARGIN_AND_TRADE);
    }

    function requestTradeAndRemoveMargin(
        uint256 gatewayIdx,
        uint256 pTokenId,
        address bToken,
        uint256 bAmount,
        bytes32 symbolId,
        int256[] calldata tradeParams
    ) external payable _onlyExecutorOrOwner_
    {
        address gateway = getGateway(gatewayIdx);
        IGateway(gateway).requestTradeAndRemoveMargin{value: msg.value}(
            pTokenId,
            bToken,
            bAmount,
            symbolId,
            tradeParams
        );
        _payGas(Consts.OP_INDEX_TRADE_AND_REMOVE_MARGIN);
    }

    function withdraw(address token, uint256 amount) external _onlyExecutorOrOwner_ {
        _withdraw(token, amount);
        _payGas(Consts.OP_INDEX_WITHDRAW);
    }

    function withdrawEthAndB0() external _onlyExecutorOrOwner_ {
        _withdraw(Consts.TOKEN_ETH, Consts.TOKEN_ETH.balanceOfThis());
        _withdraw(tokenB0, tokenB0.balanceOfThis());
        _payGas(Consts.OP_INDEX_WITHDRAW);
    }

    //================================================================================

    function _approve(address bToken, address spender, uint256 amount) internal {
        uint256 allowance = IERC20(bToken).allowance(address(this), spender);
        if (allowance == 0) {
            bToken.approveMax(spender);
        } else if (allowance < amount) {
            bToken.unapprove(spender);
            bToken.approveMax(spender);
        }
    }

    function _withdraw(address token, uint256 amount) internal {
        token.transferOut(owner, amount);
    }

    function _getOpGas(uint256 opIndex) internal view returns (address bToken, uint256 amount) {
        address[] memory tokens = IManager(manager).getOpGasTokens();
        for (uint256 i = 0; i < tokens.length; i++) {
            amount = IManager(manager).getOpGas(i, opIndex);
            if (amount > 0) {
                uint256 balance = tokens[i].balanceOfThis();
                if (balance >= amount) {
                    return (tokens[i], amount);
                }
            }
        }
    }

    function _payGas(uint256 opIndex) internal {
        if (msg.sender != owner) {
            (address bToken, uint256 amount) = _getOpGas(opIndex);
            require(bToken != address(0), Errors.INVALID_OP_GAS_TOKEN);
            bToken.transferOut(msg.sender, amount);
        }
    }

    function onERC721Received(
        address operator,
        address from,
        uint256 tokenId,
        bytes calldata data
    ) external view returns (bytes4) {
        return IERC721Receiver.onERC721Received.selector;
    }

}
