// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.10;

import './BondingCurve.sol';
import './Token.sol';
import '@openzeppelin/contracts/proxy/Clones.sol';
import '@openzeppelin/contracts/token/ERC20/IERC20.sol';
import '@openzeppelin/contracts/token/ERC721/IERC721.sol';
import '@openzeppelin/contracts/utils/ReentrancyGuard.sol';
import '@uniswap-v2-core/interfaces/IUniswapV2Factory.sol';
import '@uniswap-v2-periphery/interfaces/IUniswapV2Router01.sol';
import '@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol';
import { ITokenFactory } from './interfaces/ITokenFactory.sol';
import { Ownable } from '@openzeppelin/contracts/access/Ownable.sol';

contract TokenFactory is ReentrancyGuard, Ownable, ITokenFactory {
    using SafeERC20 for IERC20;

    uint256 public constant MAX_SUPPLY = 10 ** 9 * 1 ether;
    uint256 public constant INITIAL_SUPPLY = (MAX_SUPPLY * 1) / 5;
    uint256 public constant FUNDING_SUPPLY = (MAX_SUPPLY * 4) / 5;
    uint256 public constant FEE_DENOMINATOR = 10000;

    address public immutable tokenImplementation;
    address public immutable routerV2;
    address public immutable factoryV2;
    uint256 public feePercent;
    uint256 public accumulatedFee;
    BondingCurve public bondingCurve;
    address public fundToken;
    uint256 public fundingTarget;

    /// token address => amount
    mapping(address => uint256) public fundedAmounts;

    /// token address
    mapping(address => TokenStatus) public tokens;

    mapping(address => address) public creators;

    constructor(
        address _tokenImplementation,
        address _owner,
        uint256 _feePercent,
        address _routerV2,
        address _factoryV2,
        address _bondingCurve,
        address _fundingToken,
        uint256 _fundingTarget
    ) Ownable(_owner) {
        if (_feePercent > FEE_DENOMINATOR) revert InvalidFeePercent();
        tokenImplementation = _tokenImplementation;
        feePercent = _feePercent;
        routerV2 = _routerV2;
        factoryV2 = _factoryV2;
        bondingCurve = BondingCurve(_bondingCurve);
        fundToken = _fundingToken;
        fundingTarget = _fundingTarget;
    }

    /// =================================
    /// ======== Admin functions ========
    /// =================================

    // Add a new supported fund token
    function setFundingTarget(uint256 newTarget) external onlyOwner {
        uint256 oldTarget = fundingTarget;
        fundingTarget = newTarget;
        emit FundingTargetSet(oldTarget, newTarget);
    }

    /// @notice Allows owner to set the fee percentage
    /// @param _feePercent New fee percentage (base 10000)
    function setFeePercent(uint256 _feePercent) external onlyOwner {
        if (_feePercent > FEE_DENOMINATOR) revert InvalidFeePercent();
        uint256 oldFeePercent = feePercent;
        feePercent = _feePercent;
        emit FeePercentUpdated(oldFeePercent, _feePercent);
    }

    function createToken(
        string memory name,
        string memory symbol,
        address creator,
        uint256 initialBuyAmount
    ) external payable returns (address) {
        address tokenAddress = Clones.clone(tokenImplementation);
        Token token = Token(tokenAddress);
        token.initialize(name, symbol, address(this));
        tokens[tokenAddress] = TokenStatus.FUNDING;

        emit TokenCreated(tokenAddress, block.timestamp);

        if (initialBuyAmount > 0) {
            buy(tokenAddress, initialBuyAmount, 0, creator);
        }

        creators[tokenAddress] = creator;

        return tokenAddress;
    }

    function setupLiquidity(address tokenAddress) external nonReentrant {
        if (tokens[tokenAddress] != TokenStatus.FUNDED) revert InvalidTokenStatus();
        uint256 fundedAmount = fundedAmounts[tokenAddress];
        _setupLiquidity(tokenAddress, fundedAmount);
    }

    function buy(address tokenAddress, uint256 amount, uint256 minTokenAmount, address to) public payable nonReentrant {
        if (tokens[tokenAddress] != TokenStatus.FUNDING) revert InvalidTokenStatus();
        if (amount == 0) revert AmountZero();
        if (to == address(0)) revert InvalidAddress();

        uint256 fundedAmount = fundedAmounts[tokenAddress];
        uint256 remainingAmount = fundingTarget - fundedAmount;

        uint256 fee = (amount * feePercent) / FEE_DENOMINATOR;
        uint256 netAmount = amount - fee;
        if (netAmount > remainingAmount) {
            netAmount = remainingAmount;
        }

        uint256 requiredAmount = netAmount + fee;
        accumulatedFee += fee;

        if (fundToken == address(0)) {
            if (msg.value < amount) revert AmountNotEnough();
            uint256 refundAmount = msg.value > requiredAmount ? msg.value - requiredAmount : 0;
            if (refundAmount > 0) {
                (bool success, ) = msg.sender.call{ value: refundAmount }('');
                if (!success) revert TransferFailed();
            }
        } else {
            IERC20(fundToken).safeTransferFrom(msg.sender, address(this), requiredAmount);
        }

        Token token = Token(tokenAddress);
        uint256 totalSupply = token.totalSupply();
        uint256 tokenAmount = bondingCurve.getAmountOut(totalSupply, netAmount);
        if (tokenAmount < minTokenAmount) revert SlippageExceeded();

        uint256 availableSupply = FUNDING_SUPPLY - totalSupply;

        if (tokenAmount > availableSupply) revert TokenSupplyNotEnough();

        fundedAmount += netAmount;
        Token(tokenAddress).mint(to, tokenAmount);

        // when reached funding target
        if (fundedAmount >= fundingTarget) {
            tokens[tokenAddress] = TokenStatus.FUNDED;
            emit FundingCompleted(tokenAddress, fundedAmount);
        }

        fundedAmounts[tokenAddress] = fundedAmount;

        emit Bought(tokenAddress, to, netAmount, tokenAmount);
    }

    function sell(address tokenAddress, uint256 amount, uint256 minReceivedAmount) external nonReentrant {
        if (tokens[tokenAddress] != TokenStatus.FUNDING) revert InvalidTokenStatus();
        if (amount == 0) revert AmountZero();
        Token token = Token(tokenAddress);

        uint256 receivedAmount = bondingCurve.getFundsReceived(token.totalSupply(), amount);
        if (receivedAmount < minReceivedAmount) revert SlippageExceeded();

        uint256 fee = (receivedAmount * feePercent) / FEE_DENOMINATOR;
        receivedAmount -= fee;
        accumulatedFee += fee;
        token.burn(msg.sender, amount);
        fundedAmounts[tokenAddress] -= (receivedAmount + fee);

        _handleTransfer(fundToken, msg.sender, receivedAmount);

        emit Sold(tokenAddress, msg.sender, amount, receivedAmount);
    }

    /// @notice Allows the owner to withdraw accumulated fee
    function withdrawFee() external onlyOwner {
        uint256 _accumulatedFee = accumulatedFee;
        accumulatedFee = 0;

        _handleTransfer(fundToken, msg.sender, _accumulatedFee);

        emit FeesWithdrawn(msg.sender, _accumulatedFee);
    }

    function _createLiquidityPool(address tokenA, address tokenB) internal returns (address) {
        IUniswapV2Factory factory = IUniswapV2Factory(factoryV2);
        IUniswapV2Router01 router = IUniswapV2Router01(routerV2);

        address finalTokenB = tokenB == address(0) ? router.WETH() : tokenB;
        address pair = factory.getPair(tokenA, finalTokenB);
        if (pair == address(0)) {
            pair = factory.createPair(tokenA, finalTokenB);
        }

        return pair;
    }

    function _addLiquidity(address tokenAddress, uint256 tokenAmount, uint256 fundedAmount) internal returns (uint256) {
        Token token = Token(tokenAddress);
        IUniswapV2Router01 router = IUniswapV2Router01(routerV2);

        token.approve(routerV2, tokenAmount);
        IERC20(fundToken).approve(routerV2, fundedAmount);

        (, , uint256 liquidity) = router.addLiquidity(
            tokenAddress,
            fundToken,
            tokenAmount,
            fundedAmount,
            tokenAmount,
            fundedAmount,
            address(this),
            block.timestamp
        );
        return liquidity;
    }

    function _addLiquidityETH(address tokenAddress, uint256 tokenAmount, uint256 ethAmount) internal returns (uint256) {
        Token token = Token(tokenAddress);
        IUniswapV2Router01 router = IUniswapV2Router01(routerV2);
        token.approve(routerV2, tokenAmount);
        (, , uint256 liquidity) = router.addLiquidityETH{ value: ethAmount }(
            tokenAddress,
            tokenAmount,
            tokenAmount,
            ethAmount,
            address(this),
            block.timestamp
        );
        return liquidity;
    }

    function _burnLiquidity(address pair, uint256 liquidity) internal {
        IERC20(pair).safeTransfer(address(0), liquidity);
    }

    function _setupLiquidity(address token, uint256 fundedAmount) internal {
        Token(token).mint(address(this), INITIAL_SUPPLY);

        address pair = _createLiquidityPool(token, fundToken);

        tokens[token] = TokenStatus.TRADING;
        uint256 liquidity = fundToken == address(0)
            ? _addLiquidityETH(token, INITIAL_SUPPLY, fundedAmount)
            : _addLiquidity(token, INITIAL_SUPPLY, fundedAmount);

        _burnLiquidity(pair, liquidity);

        emit TokenLiquidityAdded(token, fundToken, INITIAL_SUPPLY, fundedAmount);
    }

    function _handleTransfer(address token, address to, uint256 amount) internal {
        if (token == address(0)) {
            (bool success, ) = to.call{ value: amount }('');
            if (!success) revert TransferFailed();
        } else {
            IERC20(token).safeTransfer(to, amount);
        }
    }
}
