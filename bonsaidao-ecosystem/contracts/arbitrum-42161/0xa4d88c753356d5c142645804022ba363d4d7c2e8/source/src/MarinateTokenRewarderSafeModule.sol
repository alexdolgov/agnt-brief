// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.19;

import {GnosisSafe} from "safe-contracts/GnosisSafe.sol";
import {Enum} from "safe-contracts/common/Enum.sol";

import {ERC20} from "solmate/tokens/ERC20.sol";
import {IQuoter} from "@uniswap/v3-periphery/contracts/interfaces/IQuoter.sol";
import {ISwapRouter} from "@uniswap/v3-periphery/contracts/interfaces/ISwapRouter.sol";
import {IUniswapV3Pool} from "@uniswap/v3-core/contracts/interfaces/IUniswapV3Pool.sol";
import {IUniswapV3Factory} from "@uniswap/v3-core/contracts/interfaces/IUniswapV3Factory.sol";

interface IMarinateV2 {
    function addReward(address _token, uint _amount) external;

    function withdrawEnabled() external view returns (bool);
}

interface IVaultPriceFeed {
    // GMX vault price feed
    function getPrice(
        address _token,
        bool _maximise,
        bool _includeAmmPrice,
        bool _useSwapPricing
    ) external view returns (uint256);
}

contract MarinateTokenRewarderSafeModule {
    error ApprovalFailed();
    error OnlyMarinateLocked();
    error OnlyOwner();
    error OnlyNotPaused();
    error QuotedAmountTooLow();
    error SwapFailed();
    error CannotSwapWeth();
    error SendFailed(address _token, uint256 _amount);
    error DistributeFailed();

    event WethDistributed(uint _amountDistributed);

    IQuoter constant QUOTER =
        IQuoter(0xb27308f9F90D607463bb33eA1BeBb41C27CE5AB6);
    IUniswapV3Factory constant UNI_V3_FACTORY =
        IUniswapV3Factory(0x1F98431c8aD98523631AE4a59f267346ea31F984);
    ISwapRouter constant SWAP_ROUTER =
        ISwapRouter(0xE592427A0AEce92De3Edee1F18E0157C05861564);
    ERC20 constant WETH = ERC20(0x82aF49447D8a07e3bd95BD0d56f35241523fBab1);
    IMarinateV2 constant MARINATE =
        IMarinateV2(0x2AdAbD6E8Ce3e82f52d9998a7f64a90d294A92A4);
    IVaultPriceFeed constant VAULT_PRICE_FEED =
        IVaultPriceFeed(0x2d68011bcA022ed0E474264145F46CC4de96a002);

    address[] public tokensToSwap;
    uint8[] public tokensToSwapDecimals;
    uint24[] public allowedPoolFees;
    uint public marinateShareBps = 5000;
    uint public priceFeedDiffToleranceBps = 100;

    bool public isPaused;
    bool public shouldSwapTreasuryShare;

    address public immutable OWNER;
    address public immutable TREASURY;
    GnosisSafe public immutable DELEGATOR;

    constructor(
        address _owner,
        address _treasury,
        GnosisSafe _delegator,
        address[] memory _tokensToSwap,
        uint24[] memory _allowedPoolFees
    ) {
        require(_owner != address(0), "Invalid owner");
        require(_treasury != address(0), "Invalid treasury address");
        require(address(_delegator) != address(0), "Invalid delegator address");
        TREASURY = _treasury;
        DELEGATOR = _delegator;
        OWNER = _owner;
        allowedPoolFees = _allowedPoolFees;
        _setTokensToSwap(_tokensToSwap);
    }

    function getNumTokensToSwap() external view returns (uint) {
        return tokensToSwap.length;
    }

    /**
     * @notice Swap tokens in dev multisig to WETH and distribute to Marinate
     * @dev This function is only callable when Marinate is locked
     */
    function swapAndDistribute() external onlyMarinateLocked onlyNotPaused {
        // Take the weth price, used to calculate the minimum WETH out
        uint256 priceFeedWethPrice = VAULT_PRICE_FEED.getPrice(
            address(WETH),
            false,
            true,
            false // ignored.
        );

        bool _shouldSwapTreasuryShare = shouldSwapTreasuryShare;

        if (!_shouldSwapTreasuryShare) {
            // Send treasury share of WETH to treasury
            uint treasuryWethShare = ((WETH.balanceOf(address(DELEGATOR))) *
                (10000 - marinateShareBps)) / 10000;
            _sendTokensToTreasury(address(WETH), treasuryWethShare);
        }
        // Swap to WETH and/or send to treasury
        uint numTokensToSwap = tokensToSwap.length;
        for (uint i = 0; i < numTokensToSwap; ) {
            address token = tokensToSwap[i];
            uint8 tokenDecimals = tokensToSwapDecimals[i];
            uint256 tokenBalance = ERC20(token).balanceOf(address(DELEGATOR));
            _swapTokenToWeth(
                token,
                tokenDecimals,
                _shouldSwapTreasuryShare
                    ? tokenBalance
                    : (tokenBalance * marinateShareBps) / 10000,
                priceFeedWethPrice
            );
            if (!_shouldSwapTreasuryShare) {
                _sendTokensToTreasury(
                    token,
                    (tokenBalance * (10000 - marinateShareBps)) / 10000
                );
            }
            unchecked {
                i++;
            }
        }

        if (_shouldSwapTreasuryShare) {
            // If this is true, we haven't sent anything to the treasury yet,
            // so we need to send half the WETH
            uint treasuryWethBalance = WETH.balanceOf(address(DELEGATOR));
            _sendTokensToTreasury(
                address(WETH),
                (treasuryWethBalance * (10000 - marinateShareBps)) / 10000
            );

            // Now distribute the remaining WETH to marinate.
            _distibuteWethToMarinate(
                (treasuryWethBalance * marinateShareBps) / 10000
            );
        } else {
            // Distribute the WETH to marinate
            _distibuteWethToMarinate(WETH.balanceOf(address(DELEGATOR)));
        }
    }

    /**
     * @notice Sets the addresses of tokens that should be swapped from the
     * dev multisig to WETH and distributed to Marinate, and their decimals
     */
    function setTokensToSwap(address[] memory _tokensToSwap) public onlyOwner {
        _setTokensToSwap(_tokensToSwap);
    }

    /**
     * @notice Sets the pool fees that are allowed to be swapped through.
     * Pool fees in hundredths of a basis point, so 3000 = 30bps = 0.3%.
     * Options are 100, 500, 3000, and 10000.
     * For best results, provide in increasing order.
     */
    function setAllowedPoolFees(
        uint24[] memory _allowedPoolFees
    ) external onlyOwner {
        allowedPoolFees = _allowedPoolFees;
    }

    /**
     * @notice Sets whether the module is paused
     */
    function setPaused(bool _isPaused) external onlyOwner {
        isPaused = _isPaused;
    }

    /**
     * @notice Sets the amount by which the swap price can differ from the
     * price feed price.
     */
    function setPriceFeedDiffToleranceBps(
        uint _toleranceBps
    ) external onlyOwner {
        require(
            _toleranceBps <= 10000,
            "Price feed difference tolerance max 10000"
        );
        priceFeedDiffToleranceBps = _toleranceBps;
    }

    /**
     * @notice Sets whether the module should swap the treasury's share of the
     * tokens to WETH, or send them without swapping.
     */
    function setShouldSwapTreasuryShare(
        bool _shouldSwapTreasuryShare
    ) external onlyOwner {
        shouldSwapTreasuryShare = _shouldSwapTreasuryShare;
    }

    /**
     * @notice Sets the share of the tokens that should be sent to Marinate
     * @dev This is a percentage in BPS, i.e. 10000 = 100%
     */
    function setMarinateShareBps(uint _marinateShareBps) external onlyOwner {
        require(_marinateShareBps <= 10000, "Marinate share max 10000");
        marinateShareBps = _marinateShareBps;
    }

    function _setTokensToSwap(address[] memory _tokensToSwap) internal {
        tokensToSwap = new address[](_tokensToSwap.length);
        tokensToSwapDecimals = new uint8[](_tokensToSwap.length);
        for (uint i = 0; i < _tokensToSwap.length; i++) {
            if (_tokensToSwap[i] == address(WETH)) revert CannotSwapWeth();
            uint decimals = ERC20(_tokensToSwap[i]).decimals();
            require(decimals <= 18, "Token decimals too high");
            tokensToSwapDecimals[i] = uint8(decimals);
        }
        tokensToSwap = _tokensToSwap;
    }

    function _sendTokensToTreasury(address _token, uint256 _amount) internal {
        (, bytes memory ret) = DELEGATOR.execTransactionFromModuleReturnData(
            address(_token),
            0,
            abi.encodeCall(ERC20.transfer, (TREASURY, _amount)),
            Enum.Operation.Call
        );
        bool success = abi.decode(ret, (bool));
        if (!success) revert SendFailed(_token, _amount);
    }

    function _distibuteWethToMarinate(uint256 _amount) internal {
        (, bytes memory ret) = DELEGATOR.execTransactionFromModuleReturnData(
            address(WETH),
            0,
            abi.encodeCall(ERC20.approve, (address(MARINATE), _amount)),
            Enum.Operation.Call
        );
        bool approveSuccess = abi.decode(ret, (bool));
        if (!approveSuccess) revert ApprovalFailed();

        if (
            !DELEGATOR.execTransactionFromModule(
                address(MARINATE),
                0,
                abi.encodeCall(MARINATE.addReward, (address(WETH), _amount)),
                Enum.Operation.Call
            )
        ) revert DistributeFailed();

        emit WethDistributed(_amount);
    }

    function _swapTokenToWeth(
        address _token,
        uint8 _tokenDecimals,
        uint256 amount,
        uint256 priceFeedWethPrice
    ) internal {
        uint24 bestFee;
        uint bestAmount;
        uint24[] memory fees = allowedPoolFees;

        address feePool;
        uint quoteAmount;
        for (uint i = 0; i < fees.length; ) {
            feePool = UNI_V3_FACTORY.getPool(_token, address(WETH), fees[i]);

            if (feePool != address(0)) {
                quoteAmount = QUOTER.quoteExactInputSingle(
                    _token,
                    address(WETH),
                    fees[i],
                    amount,
                    0
                );
            } else {
                quoteAmount = 0;
            }

            if (quoteAmount > bestAmount) {
                bestAmount = quoteAmount;
                bestFee = fees[i];
            }
            unchecked {
                i++;
            }
        }

        uint256 priceFeedPrice = VAULT_PRICE_FEED.getPrice(
            _token,
            false,
            true,
            false // ignored.
        );
        uint256 priceFeedExpectedOut = ((amount * priceFeedPrice) /
            priceFeedWethPrice) * (10 ** (18 - _tokenDecimals));

        uint256 minOut = (priceFeedExpectedOut *
            (10000 - priceFeedDiffToleranceBps)) / 10000;

        if (minOut > bestAmount) revert QuotedAmountTooLow();

        _approveAndSwap(_token, amount, bestFee, minOut);
    }

    function _approveAndSwap(
        address _token,
        uint amount,
        uint24 fee,
        uint minOut
    ) internal {
        (, bytes memory ret) = DELEGATOR.execTransactionFromModuleReturnData(
            address(_token),
            0,
            abi.encodeCall(ERC20.approve, (address(SWAP_ROUTER), amount)),
            Enum.Operation.Call
        );
        bool approveSuccess = abi.decode(ret, (bool));

        if (!approveSuccess) revert ApprovalFailed();

        if (
            !DELEGATOR.execTransactionFromModule(
                address(SWAP_ROUTER),
                0,
                abi.encodeCall(
                    ISwapRouter.exactInputSingle,
                    ISwapRouter.ExactInputSingleParams({
                        tokenIn: _token,
                        tokenOut: address(WETH),
                        fee: fee,
                        recipient: address(DELEGATOR),
                        deadline: block.timestamp,
                        amountIn: amount,
                        amountOutMinimum: minOut,
                        sqrtPriceLimitX96: 0
                    })
                ),
                Enum.Operation.Call
            )
        ) revert SwapFailed();
    }

    modifier onlyOwner() {
        if (msg.sender != OWNER) {
            revert OnlyOwner();
        }
        _;
    }

    modifier onlyNotPaused() {
        if (isPaused) {
            revert OnlyNotPaused();
        }
        _;
    }

    modifier onlyMarinateLocked() {
        if (MARINATE.withdrawEnabled()) {
            revert OnlyMarinateLocked();
        }
        _;
    }
}
