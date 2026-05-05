// ============================================================
// FILE: contracts/interfaces/IDecentralizedIndex.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "./IDexAdapter.sol";

interface IDecentralizedIndex is IERC20 {
    enum IndexType {
        WEIGHTED,
        UNWEIGHTED
    }

    struct Config {
        address partner;
        uint256 debondCooldown;
        bool hasTransferTax;
        bool blacklistTKNpTKNPoolV2; // DEPRECATED: we should remove this in future versions
    }

    // all fees: 1 == 0.01%, 10 == 0.1%, 100 == 1%
    struct Fees {
        uint16 burn;
        uint16 bond;
        uint16 debond;
        uint16 buy;
        uint16 sell;
        uint16 partner;
    }

    struct IndexAssetInfo {
        address token;
        uint256 weighting;
        uint256 basePriceUSDX96;
        address c1; // arbitrary contract/address field we can use for an index
        uint256 q1; // arbitrary quantity/number field we can use for an index
    }

    /// @notice The ```Create``` event fires when a new decentralized index has been created
    /// @param newIdx The CA of the new index contract
    /// @param wallet The creator of the new index
    event Create(address indexed newIdx, address indexed wallet);

    /// @notice The ```FlashLoan``` event fires when someone flash loans assets from the pod
    /// @param executor The sender of the request
    /// @param recipient The recipient of the flashed funds
    /// @param token The token being flash loaned
    /// @param amount The amount of token to flash loan
    event FlashLoan(address indexed executor, address indexed recipient, address token, uint256 amount);

    /// @notice The ```FlashMint``` event fires when someone flash mints pTKN from the pod
    /// @param executor The sender of the request
    /// @param recipient The recipient of the flashed funds
    /// @param amount The amount of pTKN to flash mint
    event FlashMint(address indexed executor, address indexed recipient, uint256 amount);

    /// @notice The ```Initialize``` event fires when the new pod has been initialized,
    /// @notice which is at creation on some and in another txn for others (gas limits)
    /// @param wallet The wallet that initialized
    /// @param v2Pool The new UniV2 derivative pool that was created at initialization
    event Initialize(address indexed wallet, address v2Pool);

    /// @notice The ```Bond``` event fires when someone wraps into the pod which mints new pod tokens
    /// @param wallet The wallet that wrapped
    /// @param token The token that was used as a ref to wrap into, representing an underlying tkn
    /// @param amountTokensBonded Amount of underlying tkns used to wrap/bond
    /// @param amountTokensMinted Amount of new pod tokens (pTKN) minted
    event Bond(address indexed wallet, address indexed token, uint256 amountTokensBonded, uint256 amountTokensMinted);

    /// @notice The ```Debond``` event fires when someone unwraps from a pod and redeems underlying tkn(s)
    /// @param wallet The wallet that unwrapped/debond
    /// @param amountDebonded Amount of pTKNs burned/unwrapped
    event Debond(address indexed wallet, uint256 amountDebonded);

    /// @notice The ```AddLiquidity``` event fires when new liquidity (LP) for a pod is added
    /// @param wallet The wallet that added LP
    /// @param amountTokens Amount of pTKNs used for LP
    /// @param amountDAI Amount of pairedLpAsset used for LP
    event AddLiquidity(address indexed wallet, uint256 amountTokens, uint256 amountDAI);

    /// @notice The ```RemoveLiquidity``` event fires when LP is removed for a pod
    /// @param wallet The wallet that removed LP
    /// @param amountLiquidity Amount of liquidity removed
    event RemoveLiquidity(address indexed wallet, uint256 amountLiquidity);

    event SetPartner(address indexed wallet, address newPartner);

    event SetPartnerFee(address indexed wallet, uint16 newFee);

    function BOND_FEE() external view returns (uint16);

    function DEBOND_FEE() external view returns (uint16);

    function DEX_HANDLER() external view returns (IDexAdapter);

    function FLASH_FEE_AMOUNT_DAI() external view returns (uint256);

    function PAIRED_LP_TOKEN() external view returns (address);

    function config() external view returns (Config calldata);

    function fees() external view returns (Fees calldata);

    function unlocked() external view returns (uint8);

    function isFlashMinting() external view returns (uint8);

    function indexType() external view returns (IndexType);

    function created() external view returns (uint256);

    function lpStakingPool() external view returns (address);

    function lpRewardsToken() external view returns (address);

    function isAsset(address token) external view returns (bool);

    function getAllAssets() external view returns (IndexAssetInfo[] memory);

    function getInitialAmount(address sToken, uint256 sAmount, address tToken) external view returns (uint256);

    function processPreSwapFeesAndSwap() external;

    function totalAssets() external view returns (uint256 totalManagedAssets);

    function totalAssets(address asset) external view returns (uint256 totalManagedAssets);

    function convertToShares(uint256 assets) external view returns (uint256 shares);

    function convertToAssets(uint256 shares) external view returns (uint256 assets);

    function convertToAssetsPreFlashMint(uint256 shares) external view returns (uint256 assets);

    function setup() external;

    function bond(address token, uint256 amount, uint256 amountMintMin) external;

    function debond(uint256 amount, address[] memory token, uint8[] memory percentage) external;

    function addLiquidityV2(uint256 idxTokens, uint256 daiTokens, uint256 slippage, uint256 deadline)
        external
        returns (uint256);

    function removeLiquidityV2(uint256 lpTokens, uint256 minTokens, uint256 minDAI, uint256 deadline) external;

    function flash(address recipient, address token, uint256 amount, bytes calldata data) external;

    function flashMint(address recipient, uint256 amount, bytes calldata data) external;

    function setLpStakingPool(address lpStakingPool) external;
}

// ============================================================
// FILE: contracts/interfaces/IDexAdapter.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

interface IDexAdapter {
    function ASYNC_INITIALIZE() external view returns (bool);

    function V2_ROUTER() external view returns (address);

    function V3_ROUTER() external view returns (address);

    function WETH() external view returns (address);

    function getV3Pool(address _token0, address _token1, int24 _tickSpacing) external view returns (address _pool);

    function getV3Pool(address _token0, address _token1, uint24 _poolFee) external view returns (address _pool);

    function getV2Pool(address _token0, address _token1) external view returns (address _pool);

    function createV2Pool(address _token0, address _token1) external returns (address _pool);

    function getReserves(address _pool) external view returns (uint112, uint112);

    function swapV2Single(
        address _tokenIn,
        address _tokenOut,
        uint256 _amountIn,
        uint256 _amountOutMin,
        address _recipient
    ) external returns (uint256 _amountOut);

    function swapV2SingleExactOut(
        address _tokenIn,
        address _tokenOut,
        uint256 _amountInMax,
        uint256 _amountOut,
        address _recipient
    ) external returns (uint256 _amountInUsed);

    function swapV3Single(
        address _tokenIn,
        address _tokenOut,
        uint24 _fee,
        uint256 _amountIn,
        uint256 _amountOutMin,
        address _recipient
    ) external returns (uint256 _amountOut);

    function swapV3Single(
        address _tokenIn,
        address _tokenOut,
        int24 _tickSpacing,
        uint256 _amountIn,
        uint256 _amountOutMin,
        address _recipient
    ) external returns (uint256 _amountOut);

    function addLiquidity(
        address tokenA,
        address tokenB,
        uint256 amountADesired,
        uint256 amountBDesired,
        uint256 amountAMin,
        uint256 amountBMin,
        address to,
        uint256 deadline
    ) external;

    function removeLiquidity(
        address tokenA,
        address tokenB,
        uint256 liquidity,
        uint256 amountAMin,
        uint256 amountBMin,
        address to,
        uint256 deadline
    ) external;
}

// ============================================================
// FILE: contracts/interfaces/IFlashLoanRecipient.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

interface IFlashLoanRecipient {
    function callback(bytes calldata data) external;
}

// ============================================================
// FILE: contracts/interfaces/IFlashLoanSource.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

interface IFlashLoanSource {
    struct FlashData {
        address recipient;
        address token;
        uint256 amount;
        bytes data;
        uint256 fee;
    }

    function source() external view returns (address);

    function paymentToken() external view returns (address);

    function paymentAmount() external view returns (uint256);

    function flash(address token, uint256 amount, address recipient, bytes calldata data) external;
}

// ============================================================
// FILE: contracts/interfaces/IFraxlendPair.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import "@openzeppelin/contracts/interfaces/IERC20.sol";
import {VaultAccount} from "../libraries/VaultAccount.sol";

interface IFraxlendPair is IERC20 {
    struct CurrentRateInfo {
        uint32 lastBlock;
        uint32 feeToProtocolRate; // Fee amount 1e5 precision
        uint64 lastTimestamp;
        uint64 ratePerSec;
        uint64 fullUtilizationRate;
    }

    struct ExchangeRateInfo {
        address oracle;
        uint32 maxOracleDeviation; // % of larger number, 1e5 precision
        uint184 lastTimestamp;
        uint256 lowExchangeRate;
        uint256 highExchangeRate;
    }

    function exchangeRateInfo() external view returns (ExchangeRateInfo memory);

    function totalBorrow() external view returns (VaultAccount memory);

    function asset() external view returns (address);

    function collateralContract() external view returns (address);

    function convertToAssets(uint256 shares) external view returns (uint256 assets);

    function convertToShares(uint256 assets) external view returns (uint256 shares);

    function owner() external view returns (address);

    function userCollateralBalance(address user) external view returns (uint256); // amount of collateral each user is backed

    function userBorrowShares(address user) external view returns (uint256); // represents the shares held by individuals

    function rateContract() external view returns (address);

    function timelockAddress() external view returns (address);

    function externalAssetVault() external view returns (address);

    function maxRedeem(address _owner) external view returns (uint256 _maxShares);

    function previewAddInterest()
        external
        view
        returns (
            uint256 _interestEarned,
            uint256 _feesAmount,
            uint256 _feesShare,
            CurrentRateInfo memory _newCurrentRateInfo,
            VaultAccount memory _totalAsset,
            VaultAccount memory _totalBorrow
        );

    function addInterest(bool _returnAccounting)
        external
        returns (uint256, uint256, uint256, CurrentRateInfo memory, VaultAccount memory, VaultAccount memory);

    function updateExchangeRate()
        external
        returns (bool _isBorrowAllowed, uint256 _lowExchangeRate, uint256 _highExchangeRate);

    function deposit(uint256 _amount, address _receiver) external returns (uint256 _sharesReceived);

    function redeem(uint256 _shares, address _receiver, address _owner) external returns (uint256 _amountToReturn);

    function borrowAsset(uint256 _borrowAmount, uint256 _collateralAmount, address _receiver)
        external
        returns (uint256 _shares);

    function acceptTransferTimelock() external;

    function transferTimelock(address _newTimelock) external;

    function liquidate(uint128 _sharesToLiquidate, uint256 _deadline, address _borrower) external;

    function repayAsset(uint256 _shares, address _borrower) external returns (uint256 _amountToRepay);

    function addCollateral(uint256 _collateralAmount, address _borrower) external;

    function removeCollateral(uint256 _collateralAmount, address _receiver) external;

    function setExternalAssetVault(address _vault) external;

    function setOracle(address _newOracle, uint32 _newMaxOracleDeviation) external;

    function setRateContract(address _newRateContract) external;

    function withdrawFees(uint128 _shares, address _recipient) external returns (uint256 _amountToTransfer);
}

// ============================================================
// FILE: contracts/interfaces/IIndexUtils.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import "./IDecentralizedIndex.sol";

interface IIndexUtils {
    function addLPAndStake(
        IDecentralizedIndex indexFund,
        uint256 amountIdxTokens,
        address pairedLpTokenProvided,
        uint256 amtPairedLpTokenProvided,
        uint256 amountPairedLpTokenMin,
        uint256 slippage,
        uint256 deadline
    ) external payable returns (uint256 amountOut);

    function unstakeAndRemoveLP(
        IDecentralizedIndex indexFund,
        uint256 amountStakedTokens,
        uint256 minLPTokens,
        uint256 minPairedLpToken,
        uint256 deadline
    ) external;
}

// ============================================================
// FILE: contracts/interfaces/ILeverageFeeProcessor.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

interface ILeverageFeeProcessor {
    struct PartnerConfig {
        address wallet;
        uint16 openFee; // PRECISION, e.g., 100 = 1%
        uint16 closeFee; // PRECISION, e.g., 100 = 1%
        uint256 expiration; // timestamp when the partner will no longer receive fees
    }

    function processFees(address _pod, address _tkn, uint256 _totalFees, address _mainFeeReceiver, bool _isOpen)
        external;
}

// ============================================================
// FILE: contracts/interfaces/ILeverageManager.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

interface ILeverageManager {
    enum FlashCallbackMethod {
        ADD,
        REMOVE
    }

    struct LeverageFlashProps {
        FlashCallbackMethod method;
        uint256 positionId;
        address owner;
        address sender;
        uint256 pTknAmt;
        uint256 pairedLpDesired;
        bytes config;
    }

    struct LeveragePositionProps {
        address pod;
        address lendingPair;
        address custodian;
        bool isSelfLending;
        bool hasSelfLendingPairPod;
    }

    error OwnableLeverageFactoryUnauthorizedAccount(address _sender);

    event AddLeverage(
        uint256 indexed positionId, address indexed user, uint256 pTknAmtUsed, uint256 collateralAmt, uint256 borrowAmt
    );

    event RemoveLeverage(uint256 indexed positionId, address indexed user, uint256 collateralAmt);

    event SetPositionsNFT(address oldPosNFT, address newPosNFT);

    event SetIndexUtils(address oldIdxUtils, address newIdxUtils);

    event SetFeeReceiver(address oldReceiver, address newReceiver);

    event SetFeeProcessor(address oldProcessor, address newProcessor);

    event SetOpenFeePerc(uint16 oldFee, uint16 newFee);

    event SetCloseFeePerc(uint16 oldFee, uint16 newFee);

    event SetLeverageFactory(address _factory);

    function leverageFactory() external view returns (address _leverageFactory);

    function initializePosition(address _pod, address _recipient, bool _hasSelfLendingPairPod)
        external
        returns (uint256 _positionId);

    function addLeverage(
        uint256 _positionId,
        address _pod,
        uint256 _pTknAmt,
        uint256 _pairedLpDesired,
        uint256 _userProvidedDebtAmt,
        bool _hasSelfLendingPairPod,
        bytes memory _config
    ) external;

    function addLeverageFromTkn(
        uint256 _positionId,
        address _pod,
        uint256 _tknAmt,
        uint256 _amtPtknMintMin,
        uint256 _pairedLpDesired,
        uint256 _userProvidedDebtAmt,
        bool _hasSelfLendingPairPod,
        bytes memory _config
    ) external;

    function removeLeverage(uint256 _positionId, uint256 _borrowAssetAmt, bytes memory _remLevConfig) external;

    function setLeverageFactory(address _factory) external;
}

// ============================================================
// FILE: contracts/interfaces/ILeverageManagerAccessControl.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

interface ILeverageManagerAccessControl {
    event SetPodLendingPair(address _pod, address _lendingPair);

    event SetBorrowAssetFlashSource(address _borrowAsset, address _flashSource);

    function lendingPairs(address _pod) external view returns (address _lendingPair);

    function flashSource(address _borrowTkn) external view returns (address _flashSource);

    function setLendingPair(address _pod, address _pair) external;

    function setFlashSource(address _borrowAsset, address _flashSource) external;
}

// ============================================================
// FILE: contracts/interfaces/ILeveragePositions.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

// import "@openzeppelin/contracts/token/ERC721/IERC721.sol";
import "erc721a/contracts/interfaces/IERC721A.sol";

interface ILeveragePositions is IERC721A {
    function mint(address receiver) external returns (uint256 tokenId);
}

// ============================================================
// FILE: contracts/libraries/VaultAccount.sol
// ============================================================

// SPDX-License-Identifier: ISC
pragma solidity ^0.8.28;

struct VaultAccount {
    uint128 amount; // Total amount, analogous to market cap
    uint128 shares; // Total shares, analogous to shares outstanding
}

/// @title VaultAccount Library
/// @author Drake Evans (Frax Finance) github.com/drakeevans, modified from work by @Boring_Crypto github.com/boring_crypto
/// @notice Provides a library for use with the VaultAccount struct, provides convenient math implementations
/// @dev Uses uint128 to save on storage
library VaultAccountingLibrary {
    /// @notice Calculates the shares value in relationship to `amount` and `total`
    /// @dev Given an amount, return the appropriate number of shares
    function toShares(VaultAccount memory total, uint256 amount, bool roundUp) internal pure returns (uint256 shares) {
        if (total.amount == 0) {
            shares = amount;
        } else {
            shares = (amount * total.shares) / total.amount;
            if (roundUp && (shares * total.amount) / total.shares < amount) {
                shares = shares + 1;
            }
        }
    }

    /// @notice Calculates the amount value in relationship to `shares` and `total`
    /// @dev Given a number of shares, returns the appropriate amount
    function toAmount(VaultAccount memory total, uint256 shares, bool roundUp) internal pure returns (uint256 amount) {
        if (total.shares == 0) {
            amount = shares;
        } else {
            amount = (shares * total.amount) / total.shares;
            if (roundUp && (amount * total.shares) / total.amount < shares) {
                amount = amount + 1;
            }
        }
    }
}

// ============================================================
// FILE: contracts/lvf/LeverageManager.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.28;

import {IERC4626} from "@openzeppelin/contracts/interfaces/IERC4626.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {Initializable} from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import {IDecentralizedIndex} from "../interfaces/IDecentralizedIndex.sol";
import {IDexAdapter} from "../interfaces/IDexAdapter.sol";
import {IFlashLoanRecipient} from "../interfaces/IFlashLoanRecipient.sol";
import {IFlashLoanSource} from "../interfaces/IFlashLoanSource.sol";
import {IFraxlendPair} from "../interfaces/IFraxlendPair.sol";
import {IIndexUtils} from "../interfaces/IIndexUtils.sol";
import {ILeverageFeeProcessor} from "../interfaces/ILeverageFeeProcessor.sol";
import {ILeverageManager} from "../interfaces/ILeverageManager.sol";
import {ILeveragePositions} from "../interfaces/ILeveragePositions.sol";
import {VaultAccount, VaultAccountingLibrary} from "../libraries/VaultAccount.sol";
import {LeverageManagerAccessControl} from "./LeverageManagerAccessControl.sol";
import {LeveragePositionCustodian} from "./LeveragePositionCustodian.sol";

contract LeverageManager is Initializable, LeverageManagerAccessControl, ILeverageManager, IFlashLoanRecipient {
    using SafeERC20 for IERC20;
    using VaultAccountingLibrary for VaultAccount;

    /// @notice IndexUtils contract for handling LP operations and staking
    IIndexUtils public indexUtils;

    /// @notice Position NFT contract that manages leverage position ownership
    ILeveragePositions public positionNFT;

    /// @notice Address that receives protocol fees
    address public feeReceiver;

    /// @notice Fee percentage for opening positions (PRECISION, e.g., 100 = 1%)
    uint16 public openFeePerc;

    /// @notice Fee percentage for closing positions (PRECISION, e.g., 100 = 1%)
    uint16 public closeFeePerc;

    /// @notice Mapping from position ID to position properties
    /// @dev positionId => position props
    mapping(uint256 => LeveragePositionProps) public positionProps;

    /// @notice Private variable to track workflow initialization state
    bool private _workflowInitialized;

    /// @notice Used in calculations for various fees and percentage calculations
    uint16 constant PRECISION = 10000;

    /// @notice A smart contract to process fees as needed
    address public feeProcessor;

    /// @notice Leverage factory address for access control
    address public override leverageFactory;

    /// @notice Modifier to ensure only the position owner can perform certain actions
    /// @param _positionId The ID of the position to check ownership for
    modifier onlyPositionOwner(uint256 _positionId) {
        require(positionNFT.ownerOf(_positionId) == _msgSender(), "A0");
        _;
    }

    /// @notice Modifier to manage workflow state for add/remove leverage operations
    /// @param _starting True when starting a workflow, false when ending
    /// @dev Prevents reentrancy and ensures proper workflow state management
    modifier workflow(bool _starting) {
        if (_starting) {
            require(!_workflowInitialized, "W0");
            _workflowInitialized = true;
        } else {
            require(_workflowInitialized, "W1");
            _workflowInitialized = false;
        }
        _;
    }

    /// @notice Modifier to allow only the owner or leverage factory to perform certain actions
    modifier onlyLeverageFactoryOrOwner() override {
        if (owner() != _msgSender() && leverageFactory != _msgSender()) {
            revert OwnableLeverageFactoryUnauthorizedAccount(_msgSender());
        }
        _;
    }

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    /// @notice Initializes the LeverageManager contract with required dependencies
    /// @param _positionNFT Address of the position NFT contract
    /// @param _idxUtils Address of the IndexUtils contract
    /// @param _feeReceiver Address that will receive protocol fees
    function initialize(address _positionNFT, address _idxUtils, address _feeReceiver) external initializer {
        super.initialize();
        positionNFT = ILeveragePositions(_positionNFT);
        indexUtils = IIndexUtils(_idxUtils);
        feeReceiver = _feeReceiver;
    }

    /// @notice The ```initializePosition``` function initializes a new position and mints a new position NFT
    /// @param _pod The pod to leverage against for the new position
    /// @param _recipient User to receive the position NFT
    /// @param _hasSelfLendingPairPod bool Advanced implementation parameter that determines whether or not the self lending pod's paired LP asset (fTKN) is podded as well
    function initializePosition(address _pod, address _recipient, bool _hasSelfLendingPairPod)
        external
        override
        returns (uint256 _positionId)
    {
        _positionId = _initializePosition(_pod, _recipient, _hasSelfLendingPairPod);
    }

    /// @notice The ```addLeverage``` function adds leverage to a position (or creates a new one and adds leverage)
    /// @param _positionId The NFT ID of an existing position to add leverage to, or 0 if a new position should be created
    /// @param _pod The pod to leverage against for the position
    /// @param _pTknAmt Amount of pTKN to use to leverage against
    /// @param _pairedLpDesired Total amount of pairedLpTkn for the pod to use to add LP for the new position (including _userProvidedDebtAmt)
    /// @param _userProvidedDebtAmt Amt of borrow token a user will provide to reduce flash loan amount and ultimately borrowed position LTV
    /// @param _hasSelfLendingPairPod bool Advanced implementation parameter that determines whether or not the self lending pod's paired LP asset (fTKN) is podded as well
    /// @param _config Extra config to apply when leveraging a position abi.encode(uint256,uint256,uint256)
    /// @dev _config[0] == overrideBorrowAmt Override amount to borrow from the lending pair, only matters if max LTV is >50% on the lending pair
    /// @dev _config[1] == slippage for the LP execution with 1000 precision (1000 == 100%)
    /// @dev _config[2] == deadline LP deadline for the UniswapV2 implementation
    function addLeverage(
        uint256 _positionId,
        address _pod,
        uint256 _pTknAmt,
        uint256 _pairedLpDesired,
        uint256 _userProvidedDebtAmt,
        bool _hasSelfLendingPairPod,
        bytes memory _config
    ) external override workflow(true) {
        uint256 _pTknBalBefore = IERC20(_pod).balanceOf(address(this));
        IERC20(_pod).safeTransferFrom(_msgSender(), address(this), _pTknAmt);
        _addLeveragePreCallback(
            _msgSender(),
            _positionId,
            _pod,
            IERC20(_pod).balanceOf(address(this)) - _pTknBalBefore,
            _pairedLpDesired,
            _userProvidedDebtAmt,
            _hasSelfLendingPairPod,
            _config
        );
    }

    /// @notice The ```addLeverageFromTkn``` function adds leverage to a position (or creates a new one and adds leverage) using underlying pod's TKN
    /// @param _positionId The NFT ID of an existing position to add leverage to, or 0 if a new position should be created
    /// @param _pod The pod to leverage against for the position
    /// @param _tknAmt Amount of underlying pod TKN to use to leverage against
    /// @param _amtPtknMintMin Amount of minimum pTKN that should be minted from provided underlying TKN
    /// @param _pairedLpDesired Total amount of pairedLpTkn for the pod to use to add LP for the new position (including _userProvidedDebtAmt)
    /// @param _userProvidedDebtAmt Amt of borrow token a user will provide to reduce flash loan amount and ultimately borrowed position LTV
    /// @param _hasSelfLendingPairPod bool Advanced implementation parameter that determines whether or not the self lending pod's paired LP asset (fTKN) is podded as well
    /// @param _config Extra config to apply when leveraging a position abi.encode(uint256,uint256,uint256)
    /// @dev _config[0] == overrideBorrowAmt Override amount to borrow from the lending pair, only matters if max LTV is >50% on the lending pair
    /// @dev _config[1] == slippage for the LP execution with 1000 precision (1000 == 100%)
    /// @dev _config[2] == deadline LP deadline for the UniswapV2 implementation
    function addLeverageFromTkn(
        uint256 _positionId,
        address _pod,
        uint256 _tknAmt,
        uint256 _amtPtknMintMin,
        uint256 _pairedLpDesired,
        uint256 _userProvidedDebtAmt,
        bool _hasSelfLendingPairPod,
        bytes memory _config
    ) external override workflow(true) {
        uint256 _pTknBalBefore = IERC20(_pod).balanceOf(address(this));
        _bondToPod(_msgSender(), _pod, _tknAmt, _amtPtknMintMin);
        _addLeveragePreCallback(
            _msgSender(),
            _positionId,
            _pod,
            IERC20(_pod).balanceOf(address(this)) - _pTknBalBefore,
            _pairedLpDesired,
            _userProvidedDebtAmt,
            _hasSelfLendingPairPod,
            _config
        );
    }

    /// @notice The ```removeLeverage``` function removes leverage from a position
    /// @param _positionId The NFT ID for the position
    /// @param _borrowSharesAmt Amount of borrow shares to remove from the position by paying back
    /// @param _remLevConfig Extra config required for removing leverage
    /// @dev _config[0] == _collateralAssetRemoveAmt Amount of collateral asset to remove from the position
    /// @dev _config[1] == _podAmtMin Minimum Amount of pTKN to receive on remove LP transaction (slippage)
    /// @dev _config[2] == _pairedAssetAmtMin Minimum amount of pairedLpTkn to receive on remove LP transaction (slippage)
    /// @dev _config[3] == _podPairedLiquidityPrice18 If we need to swap pTKN for pairedLpTkn to pay back flash loan, this is a 10**18*token1/token0 (decimals NOT removed) price of pod LP
    /// @dev _config[4] == _userProvidedDebtAmt Amount of borrow token a user will use to transfer from their wallet to pay back flash loan
    function removeLeverage(uint256 _positionId, uint256 _borrowSharesAmt, bytes memory _remLevConfig)
        external
        override
        workflow(true)
    {
        address _sender = _msgSender();
        address _owner = positionNFT.ownerOf(_positionId);
        require(
            _owner == _sender || positionNFT.getApproved(_positionId) == _sender
                || positionNFT.isApprovedForAll(_owner, _sender),
            "A1"
        );

        address _lendingPair = positionProps[_positionId].lendingPair;
        IFraxlendPair(_lendingPair).addInterest(false);
        uint256 _borrowAmt = IFraxlendPair(_lendingPair).totalBorrow().toAmount(_borrowSharesAmt, true);
        (uint256 _userProvidedDebtAmt, bytes memory _finalRemLevConfig) =
            _checkAndResetRemoveLeverageConfigFromBorrowAmt(_borrowAmt, _remLevConfig);

        // if additional fees required for flash source, handle that here
        _processExtraFlashLoanPayment(_positionId, _sender);

        address _borrowTkn = _getBorrowTknForPosition(_positionId);

        // needed to repay lending pair asset before removing collateral and unwinding
        IERC20(_borrowTkn).safeIncreaseAllowance(_lendingPair, _borrowAmt);

        LeverageFlashProps memory _props;
        _props.method = FlashCallbackMethod.REMOVE;
        _props.positionId = _positionId;
        _props.owner = _owner;
        _props.sender = _sender;
        bytes memory _additionalInfo = abi.encode(_borrowSharesAmt, _finalRemLevConfig);
        if (_borrowAmt > _userProvidedDebtAmt) {
            IFlashLoanSource(_getFlashSource(_positionId)).flash(
                _borrowTkn, _borrowAmt - _userProvidedDebtAmt, address(this), abi.encode(_props, _additionalInfo)
            );
        } else {
            _callback(
                abi.encode(
                    IFlashLoanSource.FlashData(address(this), _borrowTkn, 0, abi.encode(_props, _additionalInfo), 0)
                )
            );
        }
    }

    /// @notice The ```borrowAssets``` function allows a position owner to borrow more for a position in the position custodian
    /// @param _positionId The NFT ID for the position
    /// @param _borrowAmt The amount of borrow token to borrow
    /// @param _collateralAmt A collateral amount to deposit
    /// @param _recipient Where the received assets should go
    function borrowAssets(uint256 _positionId, uint256 _borrowAmt, uint256 _collateralAmt, address _recipient)
        external
        onlyPositionOwner(_positionId)
    {
        if (_collateralAmt > 0) {
            IERC20(_getAspTkn(_positionId)).safeTransferFrom(
                _msgSender(), positionProps[_positionId].custodian, _collateralAmt
            );
        }
        LeveragePositionCustodian(positionProps[_positionId].custodian).borrowAsset(
            positionProps[_positionId].lendingPair,
            _borrowAmt,
            _collateralAmt,
            openFeePerc > 0 ? address(this) : _recipient
        );
        if (openFeePerc > 0) {
            address _borrowTkn = IFraxlendPair(positionProps[_positionId].lendingPair).asset();
            uint256 _openFeeAmt = (_borrowAmt * openFeePerc) / PRECISION;
            IERC20(_borrowTkn).safeTransfer(feeReceiver, _openFeeAmt);
            IERC20(_borrowTkn).safeTransfer(_recipient, _borrowAmt - _openFeeAmt);
        }
    }

    /// @notice The ```withdrawAssets``` function allows a position owner to withdraw any assets in the position custodian
    /// @param _positionId The NFT ID for the position
    /// @param _token The token to withdraw assets from
    /// @param _recipient Where the received assets should go
    /// @param _amount How much to withdraw
    function withdrawAssets(uint256 _positionId, address _token, address _recipient, uint256 _amount)
        external
        onlyPositionOwner(_positionId)
    {
        LeveragePositionCustodian(positionProps[_positionId].custodian).withdraw(_token, _recipient, _amount);
    }

    /// @notice The ```callback``` function can only be called within the addLeverage or removeLeverage workflow,
    /// @notice and is called by the flash source implementation used to borrow assets to initiate adding or removing lev
    /// @param _userData Config/info to unpack and extract individual pieces when adding/removing leverage, see addLeverage and removeLeverage
    function callback(bytes memory _userData) external override {
        IFlashLoanSource.FlashData memory _d = abi.decode(_userData, (IFlashLoanSource.FlashData));
        (LeverageFlashProps memory _posProps,) = abi.decode(_d.data, (LeverageFlashProps, bytes));
        require(_getFlashSource(_posProps.positionId) == _msgSender(), "A2");
        _callback(_userData);
    }

    /// @notice Internal callback function that handles flash loan callbacks for add/remove leverage operations
    /// @param _userData Encoded flash loan data containing position properties and additional information
    /// @dev This function is called after flash loan execution to complete leverage operations
    function _callback(bytes memory _userData) internal workflow(false) {
        IFlashLoanSource.FlashData memory _d = abi.decode(_userData, (IFlashLoanSource.FlashData));
        (LeverageFlashProps memory _posProps,) = abi.decode(_d.data, (LeverageFlashProps, bytes));

        address _pod = positionProps[_posProps.positionId].pod;

        if (_posProps.method == FlashCallbackMethod.ADD) {
            uint256 _ptknRefundAmt = _addLeveragePostCallback(_userData);
            if (_ptknRefundAmt > 0) {
                IERC20(_pod).safeTransfer(_posProps.owner, _ptknRefundAmt);
            }
        } else if (_posProps.method == FlashCallbackMethod.REMOVE) {
            (uint256 _ptknToUserAmt, uint256 _borrowTknToUser) = _removeLeveragePostCallback(_userData);
            if (_ptknToUserAmt > 0) {
                if (closeFeePerc > 0) {
                    uint256 _closePtknTotalFees = (_ptknToUserAmt * closeFeePerc) / PRECISION;
                    _closePtknTotalFees = _processFees(_pod, _pod, _closePtknTotalFees, false);
                    _ptknToUserAmt -= _closePtknTotalFees;
                }
                IERC20(_pod).safeTransfer(_posProps.owner, _ptknToUserAmt);
            }
            if (_borrowTknToUser > 0) {
                address _borrowTkn = _getBorrowTknForPosition(_posProps.positionId);
                if (closeFeePerc > 0) {
                    uint256 _closeBorrowTotalFees = (_borrowTknToUser * closeFeePerc) / PRECISION;
                    _closeBorrowTotalFees = _processFees(_pod, _borrowTkn, _closeBorrowTotalFees, false);
                    _borrowTknToUser -= _closeBorrowTotalFees;
                }
                IERC20(_borrowTkn).safeTransfer(_posProps.owner, _borrowTknToUser);
            }
        } else {
            require(false, "NI");
        }
    }

    /// @notice Internal function to initialize a new leverage position
    /// @param _pod The pod address to create the position for
    /// @param _recipient The address that will receive the position NFT
    /// @param _hasSelfLendingPairPod Whether the self lending pod's paired LP asset is podded
    /// @return _positionId The ID of the newly created position
    function _initializePosition(address _pod, address _recipient, bool _hasSelfLendingPairPod)
        internal
        returns (uint256 _positionId)
    {
        _positionId = positionNFT.mint(_recipient);
        LeveragePositionCustodian _custodian = new LeveragePositionCustodian();
        positionProps[_positionId] = LeveragePositionProps({
            pod: _pod,
            lendingPair: lendingPairs[_pod],
            custodian: address(_custodian),
            isSelfLending: IDecentralizedIndex(_pod).PAIRED_LP_TOKEN() == lendingPairs[_pod],
            hasSelfLendingPairPod: _hasSelfLendingPairPod
        });
    }

    /// @notice Internal function to handle extra flash loan payment requirements
    /// @param _positionId The position ID to get flash source for
    /// @param _user The user address to transfer payment from
    /// @dev Some flash loan sources require additional payment tokens beyond the borrowed amount
    function _processExtraFlashLoanPayment(uint256 _positionId, address _user) internal {
        address _posFlashSrc = _getFlashSource(_positionId);
        IFlashLoanSource _flashLoanSource = IFlashLoanSource(_posFlashSrc);
        uint256 _flashPaymentAmount = _flashLoanSource.paymentAmount();
        if (_flashPaymentAmount > 0) {
            address _paymentAsset = _flashLoanSource.paymentToken();
            IERC20(_paymentAsset).safeTransferFrom(_user, address(this), _flashPaymentAmount);
            IERC20(_paymentAsset).safeIncreaseAllowance(_posFlashSrc, _flashPaymentAmount);
        }
    }

    /// @notice Internal function to handle pre-callback logic for adding leverage
    /// @param _sender The address initiating the leverage addition
    /// @param _positionId The position ID (0 for new position)
    /// @param _pod The pod address for the position
    /// @param _pTknAmt Amount of pod tokens to use
    /// @param _pairedLpDesired Total amount of paired LP tokens desired
    /// @param _userProvidedDebtAmt Amount of debt token provided by user
    /// @param _hasSelfLendingPairPod Whether self lending pair pod is used
    /// @param _config Configuration parameters for the leverage operation
    function _addLeveragePreCallback(
        address _sender,
        uint256 _positionId,
        address _pod,
        uint256 _pTknAmt,
        uint256 _pairedLpDesired,
        uint256 _userProvidedDebtAmt,
        bool _hasSelfLendingPairPod,
        bytes memory _config
    ) internal {
        if (_positionId == 0) {
            _positionId = _initializePosition(_pod, _sender, _hasSelfLendingPairPod);
        } else {
            address _owner = positionNFT.ownerOf(_positionId);
            require(
                _owner == _sender || positionNFT.getApproved(_positionId) == _sender
                    || positionNFT.isApprovedForAll(_owner, _sender),
                "A3"
            );
            _pod = positionProps[_positionId].pod;
        }

        if (_userProvidedDebtAmt > 0) {
            IERC20(_getBorrowTknForPosition(_positionId)).safeTransferFrom(_sender, address(this), _userProvidedDebtAmt);
        }

        // if additional fees required for flash source, handle that here
        _processExtraFlashLoanPayment(_positionId, _sender);

        if (_pairedLpDesired > _userProvidedDebtAmt) {
            IFlashLoanSource(_getFlashSource(_positionId)).flash(
                _getBorrowTknForPosition(_positionId),
                _pairedLpDesired - _userProvidedDebtAmt,
                address(this),
                _getFlashDataAddLeverage(_positionId, _sender, _pTknAmt, _pairedLpDesired, _config)
            );
        } else {
            _callback(
                abi.encode(
                    IFlashLoanSource.FlashData(
                        address(this),
                        _getBorrowTknForPosition(_positionId),
                        0,
                        _getFlashDataAddLeverage(_positionId, _sender, _pTknAmt, _pairedLpDesired, _config),
                        0
                    )
                )
            );
        }
    }

    /// @notice Internal function to handle post-callback logic for adding leverage
    /// @param _data Encoded flash loan data containing position and configuration information
    /// @return _ptknRefundAmt Amount of pod tokens to refund to the user
    /// @dev Processes LP addition, staking, collateral deposit, and flash loan repayment
    function _addLeveragePostCallback(bytes memory _data) internal returns (uint256 _ptknRefundAmt) {
        IFlashLoanSource.FlashData memory _d = abi.decode(_data, (IFlashLoanSource.FlashData));
        (LeverageFlashProps memory _props,) = abi.decode(_d.data, (LeverageFlashProps, bytes));
        (uint256 _overrideBorrowAmt,,) = abi.decode(_props.config, (uint256, uint256, uint256));
        address _pod = positionProps[_props.positionId].pod;
        uint256 _borrowTknAmtToLp = _props.pairedLpDesired;
        // if there's an open fee send debt/borrow token to protocol
        if (openFeePerc > 0) {
            uint256 _openTotalFees = (_borrowTknAmtToLp * openFeePerc) / PRECISION;
            _openTotalFees = _processFees(_pod, _d.token, _openTotalFees, true);
            _borrowTknAmtToLp -= _openTotalFees;
        }
        (uint256 _pTknAmtUsed,, uint256 _pairedLeftover) = _lpAndStakeInPod(_d.token, _borrowTknAmtToLp, _props);
        _ptknRefundAmt = _props.pTknAmt - _pTknAmtUsed;

        uint256 _aspTknCollateralBal =
            _spTknToAspTkn(IDecentralizedIndex(_pod).lpStakingPool(), _pairedLeftover, _props);

        uint256 _flashPaybackAmt = _d.amount + _d.fee;
        uint256 _borrowAmt = _overrideBorrowAmt > _flashPaybackAmt ? _overrideBorrowAmt : _flashPaybackAmt;

        address _aspTkn = _getAspTkn(_props.positionId);
        IERC20(_aspTkn).safeTransfer(positionProps[_props.positionId].custodian, _aspTknCollateralBal);
        LeveragePositionCustodian(positionProps[_props.positionId].custodian).borrowAsset(
            positionProps[_props.positionId].lendingPair, _borrowAmt, _aspTknCollateralBal, address(this)
        );

        // pay back flash loan and send remaining to borrower
        if (_flashPaybackAmt > 0) {
            IERC20(_d.token).safeTransfer(
                IFlashLoanSource(_getFlashSource(_props.positionId)).source(), _flashPaybackAmt
            );
        }
        uint256 _remaining = IERC20(_d.token).balanceOf(address(this));
        if (_remaining != 0) {
            IERC20(_d.token).safeTransfer(positionNFT.ownerOf(_props.positionId), _remaining);
        }
        emit AddLeverage(_props.positionId, _props.owner, _pTknAmtUsed, _aspTknCollateralBal, _borrowAmt);
    }

    /// @notice Internal function to handle post-callback logic for removing leverage
    /// @param _userData Encoded flash loan data containing position and removal configuration
    /// @return _podAmtRemaining Amount of pod tokens remaining after removal
    /// @return _borrowAmtRemaining Amount of borrow tokens remaining after flash loan repayment
    /// @dev Processes collateral removal, LP unstaking, and flash loan repayment
    function _removeLeveragePostCallback(bytes memory _userData)
        internal
        returns (uint256 _podAmtRemaining, uint256 _borrowAmtRemaining)
    {
        IFlashLoanSource.FlashData memory _d = abi.decode(_userData, (IFlashLoanSource.FlashData));
        (LeverageFlashProps memory _props, bytes memory _additionalInfo) =
            abi.decode(_d.data, (LeverageFlashProps, bytes));
        (uint256 _borrowSharesToRepay, bytes memory _removeLevConfig) = abi.decode(_additionalInfo, (uint256, bytes));
        (uint256 _collateralAssetRemoveAmt,,,, uint256 _userProvidedDebtAmt) =
            abi.decode(_removeLevConfig, (uint256, uint256, uint256, uint256, uint256));

        if (_userProvidedDebtAmt > 0) {
            IERC20(_getBorrowTknForPosition(_props.positionId)).safeTransferFrom(
                _props.sender, address(this), _userProvidedDebtAmt
            );
        }

        LeveragePositionProps memory _posProps = positionProps[_props.positionId];

        // allowance increases for borrowAmt prior to flash loaning asset
        IFraxlendPair(_posProps.lendingPair).repayAsset(_borrowSharesToRepay, _posProps.custodian);
        LeveragePositionCustodian(_posProps.custodian).removeCollateral(
            _posProps.lendingPair, _collateralAssetRemoveAmt, address(this)
        );
        (uint256 _podAmtReceived, uint256 _pairedAmtReceived) =
            _unstakeAndRemoveLP(_props.positionId, _posProps.pod, _collateralAssetRemoveAmt, _removeLevConfig);
        _podAmtRemaining = _podAmtReceived;

        // redeem borrow asset from lending pair for self lending positions
        if (positionProps[_props.positionId].isSelfLending) {
            // unwrap from self lending pod for lending pair asset
            if (_posProps.hasSelfLendingPairPod) {
                _pairedAmtReceived =
                    _debondFromSelfLendingPod(IDecentralizedIndex(_posProps.pod).PAIRED_LP_TOKEN(), _pairedAmtReceived);
            }

            IFraxlendPair(_posProps.lendingPair).redeem(_pairedAmtReceived, address(this), address(this));
            _pairedAmtReceived = IERC20(_d.token).balanceOf(address(this));
        }

        // pay back flash loan and send remaining to borrower
        uint256 _repayAmount = _d.amount + _d.fee;
        if (_repayAmount > _pairedAmtReceived) {
            uint256 _borrowAmtAcquired;
            (_podAmtRemaining, _borrowAmtAcquired) = _acquireBorrowTokenForRepayment(
                _props, _posProps.pod, _d.token, _repayAmount - _pairedAmtReceived, _podAmtReceived, _removeLevConfig
            );
            _pairedAmtReceived += _borrowAmtAcquired;
        }
        require(_pairedAmtReceived >= _repayAmount, "BAR");
        if (_repayAmount > 0) {
            IERC20(_d.token).safeTransfer(IFlashLoanSource(_getFlashSource(_props.positionId)).source(), _repayAmount);
        }
        _borrowAmtRemaining = _pairedAmtReceived - _repayAmount;
        emit RemoveLeverage(_props.positionId, _props.owner, _collateralAssetRemoveAmt);
    }

    /// @notice Internal function to debond tokens from a self-lending pod
    /// @param _pod The pod address to debond from
    /// @param _amount The amount of pod tokens to debond
    /// @return _amtOut The amount of underlying tokens received after debonding
    /// @dev Debonds 100% of the specified amount to the first underlying asset
    function _debondFromSelfLendingPod(address _pod, uint256 _amount) internal returns (uint256 _amtOut) {
        IDecentralizedIndex.IndexAssetInfo[] memory _podAssets = IDecentralizedIndex(_pod).getAllAssets();
        address[] memory _tokens = new address[](1);
        uint8[] memory _percentages = new uint8[](1);
        _tokens[0] = _podAssets[0].token;
        _percentages[0] = 100;
        IDecentralizedIndex(_pod).debond(_amount, _tokens, _percentages);
        _amtOut = IERC20(_tokens[0]).balanceOf(address(this));
    }

    /// @notice Internal function to acquire borrow tokens for flash loan repayment by swapping pod tokens
    /// @param _props Leverage flash properties containing position information
    /// @param _pod The pod address to swap tokens from
    /// @param _borrowToken The borrow token address needed for repayment
    /// @param _borrowNeeded The amount of borrow tokens needed
    /// @param _podAmtReceived The amount of pod tokens available for swapping
    /// @param _removeLevConf Configuration data for leverage removal
    /// @return _podAmtRemaining Amount of pod tokens remaining after swap
    /// @return _borrowAmtReceived Amount of borrow tokens acquired from swap
    /// @dev Handles both self-lending and regular lending scenarios
    function _acquireBorrowTokenForRepayment(
        LeverageFlashProps memory _props,
        address _pod,
        address _borrowToken,
        uint256 _borrowNeeded,
        uint256 _podAmtReceived,
        bytes memory _removeLevConf
    ) internal returns (uint256 _podAmtRemaining, uint256 _borrowAmtReceived) {
        _podAmtRemaining = _podAmtReceived;
        uint256 _borrowAmtNeededToSwap = _borrowNeeded;

        (,,, uint256 _podPairedLiquidityPrice18,) =
            abi.decode(_removeLevConf, (uint256, uint256, uint256, uint256, uint256));

        // sell pod token into LP for enough borrow token to get enough to repay
        // if self-lending swap for lending pair then redeem for borrow token
        if (_borrowAmtNeededToSwap > 0) {
            uint256 _borrowAmtFromSwap;
            if (positionProps[_props.positionId].isSelfLending) {
                address _lendingPair = positionProps[_props.positionId].lendingPair;
                (_podAmtRemaining,) = _swapPodForBorrowToken(
                    _pod,
                    _lendingPair,
                    _podAmtReceived,
                    IFraxlendPair(_lendingPair).convertToShares(_borrowAmtNeededToSwap),
                    _podPairedLiquidityPrice18
                );
                _borrowAmtFromSwap = IFraxlendPair(_lendingPair).redeem(
                    IERC20(_lendingPair).balanceOf(address(this)), address(this), address(this)
                );
            } else {
                (_podAmtRemaining, _borrowAmtFromSwap) = _swapPodForBorrowToken(
                    _pod, _borrowToken, _podAmtReceived, _borrowAmtNeededToSwap, _podPairedLiquidityPrice18
                );
            }
            _borrowAmtReceived += _borrowAmtFromSwap;
        }
    }

    /// @notice Internal function to swap pod tokens for borrow tokens using DEX adapter
    /// @param _pod The pod token address to swap from
    /// @param _targetToken The target token address to swap to
    /// @param _podAmt The amount of pod tokens available for swapping
    /// @param _targetNeededAmt The amount of target tokens needed
    /// @param _podPairedLiquidityPrice18 Price of pod LP with 18 decimal precision
    /// @return _podRemainingAmt Amount of pod tokens remaining after swap
    /// @return _targetReceivedAmt Amount of target tokens received from swap
    /// @dev Uses price information to optimize swap amounts and includes slippage protection
    function _swapPodForBorrowToken(
        address _pod,
        address _targetToken,
        uint256 _podAmt,
        uint256 _targetNeededAmt,
        uint256 _podPairedLiquidityPrice18
    ) internal returns (uint256 _podRemainingAmt, uint256 _targetReceivedAmt) {
        IDexAdapter _dexAdapter = IDecentralizedIndex(_pod).DEX_HANDLER();
        uint256 _podBalBefore = IERC20(_pod).balanceOf(address(this));
        uint256 _podAmountIn = _podAmt;
        if (_podPairedLiquidityPrice18 > 0) {
            address _t1 = _pod < _targetToken ? _targetToken : _pod;
            uint256 _podAmountInExact = _targetToken == _t1
                ? (_targetNeededAmt * 10 ** 18) / _podPairedLiquidityPrice18
                : (_targetNeededAmt * _podPairedLiquidityPrice18) / 10 ** 18;
            _podAmountIn = (_podAmountInExact * 105) / 100; // add 5% to account for slippage/price impact
            _podAmountIn = _podAmountIn > _podAmt ? _podAmt : _podAmountIn;
        }
        IERC20(_pod).safeIncreaseAllowance(address(_dexAdapter), _podAmountIn);
        _targetReceivedAmt = _dexAdapter.swapV2Single(_pod, _targetToken, _podAmountIn, _targetNeededAmt, address(this));
        _podRemainingAmt = _podAmt - (_podBalBefore - IERC20(_pod).balanceOf(address(this)));
    }

    /// @notice Internal function to add liquidity to a pod and stake the LP tokens
    /// @param _borrowToken The borrowed token address used for LP
    /// @param _borrowAmt The amount of borrowed tokens to use for LP
    /// @param _props Leverage flash properties containing position and configuration data
    /// @return _pTknAmtUsed Amount of pod tokens used in the LP operation
    /// @return _pairedLpUsed Amount of paired LP tokens used in the operation
    /// @return _pairedLpLeftover Amount of paired LP tokens remaining after operation
    /// @dev Processes borrowed tokens into appropriate paired tokens and adds LP with staking
    function _lpAndStakeInPod(address _borrowToken, uint256 _borrowAmt, LeverageFlashProps memory _props)
        internal
        returns (uint256 _pTknAmtUsed, uint256 _pairedLpUsed, uint256 _pairedLpLeftover)
    {
        (, uint256 _slippage, uint256 _deadline) = abi.decode(_props.config, (uint256, uint256, uint256));
        (address _pairedLpForPod, uint256 _pairedLpAmt) = _processAndGetPairedTknAndAmt(
            _props.positionId, _borrowToken, _borrowAmt, positionProps[_props.positionId].hasSelfLendingPairPod
        );
        uint256 _podBalBefore = IERC20(positionProps[_props.positionId].pod).balanceOf(address(this));
        uint256 _pairedLpBalBefore = IERC20(_pairedLpForPod).balanceOf(address(this));
        IERC20(positionProps[_props.positionId].pod).safeIncreaseAllowance(address(indexUtils), _props.pTknAmt);
        IERC20(_pairedLpForPod).safeIncreaseAllowance(address(indexUtils), _pairedLpAmt);
        indexUtils.addLPAndStake(
            IDecentralizedIndex(positionProps[_props.positionId].pod),
            _props.pTknAmt,
            _pairedLpForPod,
            _pairedLpAmt,
            0, // is not used so can use max slippage
            _slippage,
            _deadline
        );
        _pTknAmtUsed = _podBalBefore - IERC20(positionProps[_props.positionId].pod).balanceOf(address(this));
        _pairedLpUsed = _pairedLpBalBefore - IERC20(_pairedLpForPod).balanceOf(address(this));
        _pairedLpLeftover = _pairedLpBalBefore - _pairedLpUsed;
    }

    /// @notice Internal function to convert staking pool tokens to ASP tokens and handle remaining paired assets
    /// @param _spTkn The staking pool token address
    /// @param _pairedRemainingAmt Amount of paired tokens remaining after LP operations
    /// @param _props Leverage flash properties containing position information
    /// @return _newAspTkns Amount of new ASP tokens created from staking pool tokens
    /// @dev Deposits staking tokens into ASP vault and handles self-lending pod redemptions
    function _spTknToAspTkn(address _spTkn, uint256 _pairedRemainingAmt, LeverageFlashProps memory _props)
        internal
        returns (uint256 _newAspTkns)
    {
        address _aspTkn = _getAspTkn(_props.positionId);
        uint256 _stakingBal = IERC20(_spTkn).balanceOf(address(this));
        IERC20(_spTkn).safeIncreaseAllowance(_aspTkn, _stakingBal);
        _newAspTkns = IERC4626(_aspTkn).deposit(_stakingBal, address(this));

        // for self lending pods redeem any extra paired LP asset back into main asset
        if (positionProps[_props.positionId].isSelfLending && _pairedRemainingAmt > 0) {
            if (positionProps[_props.positionId].hasSelfLendingPairPod) {
                address[] memory _noop1;
                uint8[] memory _noop2;
                IDecentralizedIndex(IDecentralizedIndex(positionProps[_props.positionId].pod).PAIRED_LP_TOKEN()).debond(
                    _pairedRemainingAmt, _noop1, _noop2
                );
                _pairedRemainingAmt = IERC20(positionProps[_props.positionId].lendingPair).balanceOf(address(this));
            }
            IFraxlendPair(positionProps[_props.positionId].lendingPair).redeem(
                _pairedRemainingAmt, address(this), address(this)
            );
        }
    }

    /// @notice Internal function to validate and adjust remove leverage configuration based on borrow amount
    /// @param _borrowAmt The actual borrow amount to be repaid
    /// @param _remLevConfig The original remove leverage configuration
    /// @return _finalUserProvidedDebtAmt The adjusted user provided debt amount
    /// @return _finalRemLevConfig The adjusted remove leverage configuration
    /// @dev Ensures user provided debt amount doesn't exceed the actual borrow amount
    function _checkAndResetRemoveLeverageConfigFromBorrowAmt(uint256 _borrowAmt, bytes memory _remLevConfig)
        internal
        pure
        returns (uint256 _finalUserProvidedDebtAmt, bytes memory _finalRemLevConfig)
    {
        (uint256 _1, uint256 _2, uint256 _3, uint256 _4, uint256 _userProvidedDebtAmt) =
            abi.decode(_remLevConfig, (uint256, uint256, uint256, uint256, uint256));
        _finalUserProvidedDebtAmt = _userProvidedDebtAmt;
        if (_userProvidedDebtAmt > _borrowAmt) {
            _finalUserProvidedDebtAmt = _borrowAmt;
        }
        _finalRemLevConfig = abi.encode(_1, _2, _3, _4, _finalUserProvidedDebtAmt);
    }

    /// @notice Internal function to process borrowed tokens and convert them to appropriate paired tokens for LP
    /// @param _positionId The position ID to get lending pair information
    /// @param _borrowedTkn The borrowed token address
    /// @param _borrowedAmt The amount of borrowed tokens
    /// @param _hasSelfLendingPairPod Whether the self lending pair pod is used
    /// @return _finalPairedTkn The final paired token address for LP operations
    /// @return _finalPairedAmt The final amount of paired tokens for LP operations
    /// @dev Handles conversion for self-lending scenarios including podded lending pairs
    function _processAndGetPairedTknAndAmt(
        uint256 _positionId,
        address _borrowedTkn,
        uint256 _borrowedAmt,
        bool _hasSelfLendingPairPod
    ) internal returns (address _finalPairedTkn, uint256 _finalPairedAmt) {
        _finalPairedTkn = _borrowedTkn;
        _finalPairedAmt = _borrowedAmt;
        address _lendingPair = positionProps[_positionId].lendingPair;
        if (positionProps[_positionId].isSelfLending) {
            _finalPairedTkn = _lendingPair;
            IERC20(_borrowedTkn).safeIncreaseAllowance(_lendingPair, _finalPairedAmt);
            _finalPairedAmt = IFraxlendPair(_lendingPair).deposit(_finalPairedAmt, address(this));

            // self lending+podded
            if (_hasSelfLendingPairPod) {
                _finalPairedTkn = IDecentralizedIndex(positionProps[_positionId].pod).PAIRED_LP_TOKEN();
                IERC20(_lendingPair).safeIncreaseAllowance(_finalPairedTkn, _finalPairedAmt);
                IDecentralizedIndex(_finalPairedTkn).bond(_lendingPair, _finalPairedAmt, 0);
                _finalPairedAmt = IERC20(_finalPairedTkn).balanceOf(address(this));
            }
        }
    }

    /// @notice Internal function to unstake LP tokens and remove liquidity from a pod
    /// @param _positionId The position ID to get ASP token information
    /// @param _pod The pod address to remove LP from
    /// @param _collateralAssetRemoveAmt Amount of collateral (ASP tokens) to remove
    /// @param _remLevConf Remove leverage configuration containing slippage parameters
    /// @return _podAmtReceived Amount of pod tokens received from LP removal
    /// @return _pairedAmtReceived Amount of paired tokens received from LP removal
    /// @dev Redeems ASP tokens for staking tokens, then unstakes and removes LP
    function _unstakeAndRemoveLP(
        uint256 _positionId,
        address _pod,
        uint256 _collateralAssetRemoveAmt,
        bytes memory _remLevConf
    ) internal returns (uint256 _podAmtReceived, uint256 _pairedAmtReceived) {
        (, uint256 _podAmtMin, uint256 _pairedAssetAmtMin,,) =
            abi.decode(_remLevConf, (uint256, uint256, uint256, uint256, uint256));
        address _spTkn = IDecentralizedIndex(_pod).lpStakingPool();
        address _pairedLpToken = IDecentralizedIndex(_pod).PAIRED_LP_TOKEN();

        uint256 _podAmtBefore = IERC20(_pod).balanceOf(address(this));
        uint256 _pairedTokenAmtBefore = IERC20(_pairedLpToken).balanceOf(address(this));

        uint256 _spTknAmtReceived =
            IERC4626(_getAspTkn(_positionId)).redeem(_collateralAssetRemoveAmt, address(this), address(this));
        IERC20(_spTkn).safeIncreaseAllowance(address(indexUtils), _spTknAmtReceived);
        indexUtils.unstakeAndRemoveLP(
            IDecentralizedIndex(_pod), _spTknAmtReceived, _podAmtMin, _pairedAssetAmtMin, block.timestamp
        );
        _podAmtReceived = IERC20(_pod).balanceOf(address(this)) - _podAmtBefore;
        _pairedAmtReceived = IERC20(_pairedLpToken).balanceOf(address(this)) - _pairedTokenAmtBefore;
    }

    /// @notice Internal function to bond underlying tokens to a pod to mint pod tokens
    /// @param _user The user address to transfer underlying tokens from
    /// @param _pod The pod address to bond tokens to
    /// @param _tknAmt The amount of underlying tokens to bond
    /// @param _amtPtknMintMin The minimum amount of pod tokens expected to be minted
    /// @dev Transfers underlying tokens from user and bonds them to the pod
    function _bondToPod(address _user, address _pod, uint256 _tknAmt, uint256 _amtPtknMintMin) internal {
        IDecentralizedIndex.IndexAssetInfo[] memory _podAssets = IDecentralizedIndex(_pod).getAllAssets();
        IERC20 _tkn = IERC20(_podAssets[0].token);
        uint256 _tknBalBefore = _tkn.balanceOf(address(this));
        _tkn.safeTransferFrom(_user, address(this), _tknAmt);
        uint256 _pTknBalBefore = IERC20(_pod).balanceOf(address(this));
        _tkn.safeIncreaseAllowance(_pod, _tkn.balanceOf(address(this)) - _tknBalBefore);
        IDecentralizedIndex(_pod).bond(address(_tkn), _tkn.balanceOf(address(this)) - _tknBalBefore, _amtPtknMintMin);
        IERC20(_pod).balanceOf(address(this)) - _pTknBalBefore;
    }

    /// @notice Internal view function to get the borrow token address for a position
    /// @param _positionId The position ID to get borrow token for
    /// @return The address of the borrow token (lending pair asset)
    function _getBorrowTknForPosition(uint256 _positionId) internal view returns (address) {
        return IFraxlendPair(positionProps[_positionId].lendingPair).asset();
    }

    /// @notice Internal view function to get the flash loan source address for a position
    /// @param _positionId The position ID to get flash source for
    /// @return The address of the flash loan source for the position's borrow token
    function _getFlashSource(uint256 _positionId) internal view returns (address) {
        return flashSource[_getBorrowTknForPosition(_positionId)];
    }

    /// @notice Internal view function to get the ASP token address for a position
    /// @param _positionId The position ID to get ASP token for
    /// @return The address of the ASP token (lending pair collateral contract)
    function _getAspTkn(uint256 _positionId) internal view returns (address) {
        return IFraxlendPair(positionProps[_positionId].lendingPair).collateralContract();
    }

    /// @notice Internal view function to encode flash loan data for adding leverage
    /// @param _positionId The position ID for the leverage operation
    /// @param _sender The address initiating the leverage addition
    /// @param _pTknAmt Amount of pod tokens to use
    /// @param _pairedLpDesired Total amount of paired LP tokens desired
    /// @param _config Configuration parameters for the leverage operation
    /// @return Encoded flash loan data for add leverage operation
    function _getFlashDataAddLeverage(
        uint256 _positionId,
        address _sender,
        uint256 _pTknAmt,
        uint256 _pairedLpDesired,
        bytes memory _config
    ) internal view returns (bytes memory) {
        return abi.encode(
            LeverageFlashProps({
                method: FlashCallbackMethod.ADD,
                positionId: _positionId,
                owner: positionNFT.ownerOf(_positionId),
                sender: _sender,
                pTknAmt: _pTknAmt,
                pairedLpDesired: _pairedLpDesired,
                config: _config
            }),
            ""
        );
    }

    /// @notice Processes fees to both any partner configured or insurance funds
    function _processFees(address _pod, address _tkn, uint256 _totalFees, bool _isOpening)
        internal
        returns (uint256 _totalFeesProcessed)
    {
        if (_totalFees > 0 && feeProcessor != address(0)) {
            IERC20(_tkn).safeTransfer(feeProcessor, _totalFees);
            ILeverageFeeProcessor(feeProcessor).processFees(_pod, _tkn, _totalFees, feeReceiver, _isOpening);
            _totalFeesProcessed = _totalFees;
        }
    }

    /// @notice Sets the position NFT contract address
    /// @param _posNFT The new position NFT contract address
    /// @dev Only callable by the contract owner
    function setPositionNFT(ILeveragePositions _posNFT) external onlyOwner {
        address _oldPosNFT = address(positionNFT);
        positionNFT = _posNFT;
        emit SetPositionsNFT(_oldPosNFT, address(_posNFT));
    }

    /// @notice Sets the IndexUtils contract address
    /// @param _utils The new IndexUtils contract address
    /// @dev Only callable by the contract owner
    function setIndexUtils(IIndexUtils _utils) external onlyOwner {
        address _old = address(indexUtils);
        indexUtils = _utils;
        emit SetIndexUtils(_old, address(_utils));
    }

    /// @notice Sets the fee receiver address
    /// @param _receiver The new fee receiver address
    /// @dev Only callable by the contract owner
    function setFeeReceiver(address _receiver) external onlyOwner {
        address _currentReceiver = feeReceiver;
        feeReceiver = _receiver;
        emit SetFeeReceiver(_currentReceiver, _receiver);
    }

    function setFeeProcessor(address _processor) external onlyOwner {
        address _currentProcessor = feeProcessor;
        feeProcessor = _processor;
        emit SetFeeProcessor(_currentProcessor, _processor);
    }

    /// @notice Sets the opening fee percentage
    /// @param _newFee The new opening fee percentage (max 2500 = 25%)
    /// @dev Only callable by the contract owner, fee cannot exceed 25%
    function setOpenFeePerc(uint16 _newFee) external onlyOwner {
        require(_newFee <= 2500, "M");
        uint16 _oldFee = openFeePerc;
        openFeePerc = _newFee;
        emit SetOpenFeePerc(_oldFee, _newFee);
    }

    /// @notice Sets the closing fee percentage
    /// @param _newFee The new closing fee percentage (max 2500 = 25%)
    /// @dev Only callable by the contract owner, fee cannot exceed 25%
    function setCloseFeePerc(uint16 _newFee) external onlyOwner {
        require(_newFee <= 2500, "M");
        uint16 _oldFee = closeFeePerc;
        closeFeePerc = _newFee;
        emit SetCloseFeePerc(_oldFee, _newFee);
    }

    function setLeverageFactory(address _factory) external override onlyOwner {
        leverageFactory = _factory;
        emit SetLeverageFactory(_factory);
    }

    /// @notice Emergency function to rescue ERC20 tokens from the contract
    /// @param _token The ERC20 token contract to rescue
    /// @dev Only callable by the contract owner
    function rescueTokens(IERC20 _token) external onlyOwner {
        _token.safeTransfer(_msgSender(), _token.balanceOf(address(this)));
    }
}

// ============================================================
// FILE: contracts/lvf/LeverageManagerAccessControl.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.28;

import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "../interfaces/IFlashLoanSource.sol";
import "../interfaces/IFraxlendPair.sol";
import "../interfaces/ILeverageManagerAccessControl.sol";

contract LeverageManagerAccessControl is Initializable, OwnableUpgradeable, ILeverageManagerAccessControl {
    // pod => pair
    mapping(address => address) public override lendingPairs;
    // borrow asset (USDC, DAI, pOHM, etc.) => flash source
    mapping(address => address) public override flashSource;

    modifier onlyLeverageFactoryOrOwner() virtual {
        _checkOwner();
        _;
    }

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize() public initializer {
        __Ownable_init(_msgSender());
    }

    function setLendingPair(address _pod, address _pair) external override onlyLeverageFactoryOrOwner {
        if (_pair != address(0)) {
            require(IFraxlendPair(_pair).collateralContract() != address(0), "LPS");
        }
        lendingPairs[_pod] = _pair;
        emit SetPodLendingPair(_pod, _pair);
    }

    function setFlashSource(address _borrowAsset, address _flashSource) external override onlyOwner {
        if (_flashSource != address(0)) {
            require(IFlashLoanSource(_flashSource).source() != address(0), "AFS");
        }
        flashSource[_borrowAsset] = _flashSource;
        emit SetBorrowAssetFlashSource(_borrowAsset, _flashSource);
    }
}

// ============================================================
// FILE: contracts/lvf/LeveragePositionCustodian.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.28;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/Context.sol";
import "../interfaces/IFraxlendPair.sol";

contract LeveragePositionCustodian is Context, Ownable {
    using SafeERC20 for IERC20;

    constructor() Ownable(_msgSender()) {}

    function borrowAsset(address _pair, uint256 _borrowAmount, uint256 _collateralAmount, address _receiver)
        external
        onlyOwner
    {
        IERC20(IFraxlendPair(_pair).collateralContract()).safeIncreaseAllowance(_pair, _collateralAmount);
        IFraxlendPair(_pair).borrowAsset(_borrowAmount, _collateralAmount, _receiver);
    }

    function removeCollateral(address _pair, uint256 _collateralAmount, address _receiver) external onlyOwner {
        IFraxlendPair(_pair).removeCollateral(_collateralAmount, _receiver);
    }

    function withdraw(address _token, address _recipient, uint256 _amount) external onlyOwner {
        _amount = _amount == 0 ? IERC20(_token).balanceOf(address(this)) : _amount;
        IERC20(_token).safeTransfer(_recipient, _amount);
    }
}

// ============================================================
// FILE: node_modules/@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (access/Ownable.sol)

pragma solidity ^0.8.20;

import {ContextUpgradeable} from "../utils/ContextUpgradeable.sol";
import {Initializable} from "../proxy/utils/Initializable.sol";

/**
 * @dev Contract module which provides a basic access control mechanism, where
 * there is an account (an owner) that can be granted exclusive access to
 * specific functions.
 *
 * The initial owner is set to the address provided by the deployer. This can
 * later be changed with {transferOwnership}.
 *
 * This module is used through inheritance. It will make available the modifier
 * `onlyOwner`, which can be applied to your functions to restrict their use to
 * the owner.
 */
abstract contract OwnableUpgradeable is Initializable, ContextUpgradeable {
    /// @custom:storage-location erc7201:openzeppelin.storage.Ownable
    struct OwnableStorage {
        address _owner;
    }

    // keccak256(abi.encode(uint256(keccak256("openzeppelin.storage.Ownable")) - 1)) & ~bytes32(uint256(0xff))
    bytes32 private constant OwnableStorageLocation = 0x9016d09d72d40fdae2fd8ceac6b6234c7706214fd39c1cd1e609a0528c199300;

    function _getOwnableStorage() private pure returns (OwnableStorage storage $) {
        assembly {
            $.slot := OwnableStorageLocation
        }
    }

    /**
     * @dev The caller account is not authorized to perform an operation.
     */
    error OwnableUnauthorizedAccount(address account);

    /**
     * @dev The owner is not a valid owner account. (eg. `address(0)`)
     */
    error OwnableInvalidOwner(address owner);

    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);

    /**
     * @dev Initializes the contract setting the address provided by the deployer as the initial owner.
     */
    function __Ownable_init(address initialOwner) internal onlyInitializing {
        __Ownable_init_unchained(initialOwner);
    }

    function __Ownable_init_unchained(address initialOwner) internal onlyInitializing {
        if (initialOwner == address(0)) {
            revert OwnableInvalidOwner(address(0));
        }
        _transferOwnership(initialOwner);
    }

    /**
     * @dev Throws if called by any account other than the owner.
     */
    modifier onlyOwner() {
        _checkOwner();
        _;
    }

    /**
     * @dev Returns the address of the current owner.
     */
    function owner() public view virtual returns (address) {
        OwnableStorage storage $ = _getOwnableStorage();
        return $._owner;
    }

    /**
     * @dev Throws if the sender is not the owner.
     */
    function _checkOwner() internal view virtual {
        if (owner() != _msgSender()) {
            revert OwnableUnauthorizedAccount(_msgSender());
        }
    }

    /**
     * @dev Leaves the contract without owner. It will not be possible to call
     * `onlyOwner` functions. Can only be called by the current owner.
     *
     * NOTE: Renouncing ownership will leave the contract without an owner,
     * thereby disabling any functionality that is only available to the owner.
     */
    function renounceOwnership() public virtual onlyOwner {
        _transferOwnership(address(0));
    }

    /**
     * @dev Transfers ownership of the contract to a new account (`newOwner`).
     * Can only be called by the current owner.
     */
    function transferOwnership(address newOwner) public virtual onlyOwner {
        if (newOwner == address(0)) {
            revert OwnableInvalidOwner(address(0));
        }
        _transferOwnership(newOwner);
    }

    /**
     * @dev Transfers ownership of the contract to a new account (`newOwner`).
     * Internal function without access restriction.
     */
    function _transferOwnership(address newOwner) internal virtual {
        OwnableStorage storage $ = _getOwnableStorage();
        address oldOwner = $._owner;
        $._owner = newOwner;
        emit OwnershipTransferred(oldOwner, newOwner);
    }
}

// ============================================================
// FILE: node_modules/@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.3.0) (proxy/utils/Initializable.sol)

pragma solidity ^0.8.20;

/**
 * @dev This is a base contract to aid in writing upgradeable contracts, or any kind of contract that will be deployed
 * behind a proxy. Since proxied contracts do not make use of a constructor, it's common to move constructor logic to an
 * external initializer function, usually called `initialize`. It then becomes necessary to protect this initializer
 * function so it can only be called once. The {initializer} modifier provided by this contract will have this effect.
 *
 * The initialization functions use a version number. Once a version number is used, it is consumed and cannot be
 * reused. This mechanism prevents re-execution of each "step" but allows the creation of new initialization steps in
 * case an upgrade adds a module that needs to be initialized.
 *
 * For example:
 *
 * [.hljs-theme-light.nopadding]
 * ```solidity
 * contract MyToken is ERC20Upgradeable {
 *     function initialize() initializer public {
 *         __ERC20_init("MyToken", "MTK");
 *     }
 * }
 *
 * contract MyTokenV2 is MyToken, ERC20PermitUpgradeable {
 *     function initializeV2() reinitializer(2) public {
 *         __ERC20Permit_init("MyToken");
 *     }
 * }
 * ```
 *
 * TIP: To avoid leaving the proxy in an uninitialized state, the initializer function should be called as early as
 * possible by providing the encoded function call as the `_data` argument to {ERC1967Proxy-constructor}.
 *
 * CAUTION: When used with inheritance, manual care must be taken to not invoke a parent initializer twice, or to ensure
 * that all initializers are idempotent. This is not verified automatically as constructors are by Solidity.
 *
 * [CAUTION]
 * ====
 * Avoid leaving a contract uninitialized.
 *
 * An uninitialized contract can be taken over by an attacker. This applies to both a proxy and its implementation
 * contract, which may impact the proxy. To prevent the implementation contract from being used, you should invoke
 * the {_disableInitializers} function in the constructor to automatically lock it when it is deployed:
 *
 * [.hljs-theme-light.nopadding]
 * ```
 * /// @custom:oz-upgrades-unsafe-allow constructor
 * constructor() {
 *     _disableInitializers();
 * }
 * ```
 * ====
 */
abstract contract Initializable {
    /**
     * @dev Storage of the initializable contract.
     *
     * It's implemented on a custom ERC-7201 namespace to reduce the risk of storage collisions
     * when using with upgradeable contracts.
     *
     * @custom:storage-location erc7201:openzeppelin.storage.Initializable
     */
    struct InitializableStorage {
        /**
         * @dev Indicates that the contract has been initialized.
         */
        uint64 _initialized;
        /**
         * @dev Indicates that the contract is in the process of being initialized.
         */
        bool _initializing;
    }

    // keccak256(abi.encode(uint256(keccak256("openzeppelin.storage.Initializable")) - 1)) & ~bytes32(uint256(0xff))
    bytes32 private constant INITIALIZABLE_STORAGE = 0xf0c57e16840df040f15088dc2f81fe391c3923bec73e23a9662efc9c229c6a00;

    /**
     * @dev The contract is already initialized.
     */
    error InvalidInitialization();

    /**
     * @dev The contract is not initializing.
     */
    error NotInitializing();

    /**
     * @dev Triggered when the contract has been initialized or reinitialized.
     */
    event Initialized(uint64 version);

    /**
     * @dev A modifier that defines a protected initializer function that can be invoked at most once. In its scope,
     * `onlyInitializing` functions can be used to initialize parent contracts.
     *
     * Similar to `reinitializer(1)`, except that in the context of a constructor an `initializer` may be invoked any
     * number of times. This behavior in the constructor can be useful during testing and is not expected to be used in
     * production.
     *
     * Emits an {Initialized} event.
     */
    modifier initializer() {
        // solhint-disable-next-line var-name-mixedcase
        InitializableStorage storage $ = _getInitializableStorage();

        // Cache values to avoid duplicated sloads
        bool isTopLevelCall = !$._initializing;
        uint64 initialized = $._initialized;

        // Allowed calls:
        // - initialSetup: the contract is not in the initializing state and no previous version was
        //                 initialized
        // - construction: the contract is initialized at version 1 (no reinitialization) and the
        //                 current contract is just being deployed
        bool initialSetup = initialized == 0 && isTopLevelCall;
        bool construction = initialized == 1 && address(this).code.length == 0;

        if (!initialSetup && !construction) {
            revert InvalidInitialization();
        }
        $._initialized = 1;
        if (isTopLevelCall) {
            $._initializing = true;
        }
        _;
        if (isTopLevelCall) {
            $._initializing = false;
            emit Initialized(1);
        }
    }

    /**
     * @dev A modifier that defines a protected reinitializer function that can be invoked at most once, and only if the
     * contract hasn't been initialized to a greater version before. In its scope, `onlyInitializing` functions can be
     * used to initialize parent contracts.
     *
     * A reinitializer may be used after the original initialization step. This is essential to configure modules that
     * are added through upgrades and that require initialization.
     *
     * When `version` is 1, this modifier is similar to `initializer`, except that functions marked with `reinitializer`
     * cannot be nested. If one is invoked in the context of another, execution will revert.
     *
     * Note that versions can jump in increments greater than 1; this implies that if multiple reinitializers coexist in
     * a contract, executing them in the right order is up to the developer or operator.
     *
     * WARNING: Setting the version to 2**64 - 1 will prevent any future reinitialization.
     *
     * Emits an {Initialized} event.
     */
    modifier reinitializer(uint64 version) {
        // solhint-disable-next-line var-name-mixedcase
        InitializableStorage storage $ = _getInitializableStorage();

        if ($._initializing || $._initialized >= version) {
            revert InvalidInitialization();
        }
        $._initialized = version;
        $._initializing = true;
        _;
        $._initializing = false;
        emit Initialized(version);
    }

    /**
     * @dev Modifier to protect an initialization function so that it can only be invoked by functions with the
     * {initializer} and {reinitializer} modifiers, directly or indirectly.
     */
    modifier onlyInitializing() {
        _checkInitializing();
        _;
    }

    /**
     * @dev Reverts if the contract is not in an initializing state. See {onlyInitializing}.
     */
    function _checkInitializing() internal view virtual {
        if (!_isInitializing()) {
            revert NotInitializing();
        }
    }

    /**
     * @dev Locks the contract, preventing any future reinitialization. This cannot be part of an initializer call.
     * Calling this in the constructor of a contract will prevent that contract from being initialized or reinitialized
     * to any version. It is recommended to use this to lock implementation contracts that are designed to be called
     * through proxies.
     *
     * Emits an {Initialized} event the first time it is successfully executed.
     */
    function _disableInitializers() internal virtual {
        // solhint-disable-next-line var-name-mixedcase
        InitializableStorage storage $ = _getInitializableStorage();

        if ($._initializing) {
            revert InvalidInitialization();
        }
        if ($._initialized != type(uint64).max) {
            $._initialized = type(uint64).max;
            emit Initialized(type(uint64).max);
        }
    }

    /**
     * @dev Returns the highest version that has been initialized. See {reinitializer}.
     */
    function _getInitializedVersion() internal view returns (uint64) {
        return _getInitializableStorage()._initialized;
    }

    /**
     * @dev Returns `true` if the contract is currently initializing. See {onlyInitializing}.
     */
    function _isInitializing() internal view returns (bool) {
        return _getInitializableStorage()._initializing;
    }

    /**
     * @dev Pointer to storage slot. Allows integrators to override it with a custom storage location.
     *
     * NOTE: Consider following the ERC-7201 formula to derive storage locations.
     */
    function _initializableStorageSlot() internal pure virtual returns (bytes32) {
        return INITIALIZABLE_STORAGE;
    }

    /**
     * @dev Returns a pointer to the storage namespace.
     */
    // solhint-disable-next-line var-name-mixedcase
    function _getInitializableStorage() private pure returns (InitializableStorage storage $) {
        bytes32 slot = _initializableStorageSlot();
        assembly {
            $.slot := slot
        }
    }
}

// ============================================================
// FILE: node_modules/@openzeppelin/contracts-upgradeable/utils/ContextUpgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.1) (utils/Context.sol)

pragma solidity ^0.8.20;
import {Initializable} from "../proxy/utils/Initializable.sol";

/**
 * @dev Provides information about the current execution context, including the
 * sender of the transaction and its data. While these are generally available
 * via msg.sender and msg.data, they should not be accessed in such a direct
 * manner, since when dealing with meta-transactions the account sending and
 * paying for execution may not be the actual sender (as far as an application
 * is concerned).
 *
 * This contract is only required for intermediate, library-like contracts.
 */
abstract contract ContextUpgradeable is Initializable {
    function __Context_init() internal onlyInitializing {
    }

    function __Context_init_unchained() internal onlyInitializing {
    }
    function _msgSender() internal view virtual returns (address) {
        return msg.sender;
    }

    function _msgData() internal view virtual returns (bytes calldata) {
        return msg.data;
    }

    function _contextSuffixLength() internal view virtual returns (uint256) {
        return 0;
    }
}

// ============================================================
// FILE: node_modules/@openzeppelin/contracts/access/Ownable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (access/Ownable.sol)

pragma solidity ^0.8.20;

import {Context} from "../utils/Context.sol";

/**
 * @dev Contract module which provides a basic access control mechanism, where
 * there is an account (an owner) that can be granted exclusive access to
 * specific functions.
 *
 * The initial owner is set to the address provided by the deployer. This can
 * later be changed with {transferOwnership}.
 *
 * This module is used through inheritance. It will make available the modifier
 * `onlyOwner`, which can be applied to your functions to restrict their use to
 * the owner.
 */
abstract contract Ownable is Context {
    address private _owner;

    /**
     * @dev The caller account is not authorized to perform an operation.
     */
    error OwnableUnauthorizedAccount(address account);

    /**
     * @dev The owner is not a valid owner account. (eg. `address(0)`)
     */
    error OwnableInvalidOwner(address owner);

    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);

    /**
     * @dev Initializes the contract setting the address provided by the deployer as the initial owner.
     */
    constructor(address initialOwner) {
        if (initialOwner == address(0)) {
            revert OwnableInvalidOwner(address(0));
        }
        _transferOwnership(initialOwner);
    }

    /**
     * @dev Throws if called by any account other than the owner.
     */
    modifier onlyOwner() {
        _checkOwner();
        _;
    }

    /**
     * @dev Returns the address of the current owner.
     */
    function owner() public view virtual returns (address) {
        return _owner;
    }

    /**
     * @dev Throws if the sender is not the owner.
     */
    function _checkOwner() internal view virtual {
        if (owner() != _msgSender()) {
            revert OwnableUnauthorizedAccount(_msgSender());
        }
    }

    /**
     * @dev Leaves the contract without owner. It will not be possible to call
     * `onlyOwner` functions. Can only be called by the current owner.
     *
     * NOTE: Renouncing ownership will leave the contract without an owner,
     * thereby disabling any functionality that is only available to the owner.
     */
    function renounceOwnership() public virtual onlyOwner {
        _transferOwnership(address(0));
    }

    /**
     * @dev Transfers ownership of the contract to a new account (`newOwner`).
     * Can only be called by the current owner.
     */
    function transferOwnership(address newOwner) public virtual onlyOwner {
        if (newOwner == address(0)) {
            revert OwnableInvalidOwner(address(0));
        }
        _transferOwnership(newOwner);
    }

    /**
     * @dev Transfers ownership of the contract to a new account (`newOwner`).
     * Internal function without access restriction.
     */
    function _transferOwnership(address newOwner) internal virtual {
        address oldOwner = _owner;
        _owner = newOwner;
        emit OwnershipTransferred(oldOwner, newOwner);
    }
}

// ============================================================
// FILE: node_modules/@openzeppelin/contracts/interfaces/IERC1363.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.4.0) (interfaces/IERC1363.sol)

pragma solidity >=0.6.2;

import {IERC20} from "./IERC20.sol";
import {IERC165} from "./IERC165.sol";

/**
 * @title IERC1363
 * @dev Interface of the ERC-1363 standard as defined in the https://eips.ethereum.org/EIPS/eip-1363[ERC-1363].
 *
 * Defines an extension interface for ERC-20 tokens that supports executing code on a recipient contract
 * after `transfer` or `transferFrom`, or code on a spender contract after `approve`, in a single transaction.
 */
interface IERC1363 is IERC20, IERC165 {
    /*
     * Note: the ERC-165 identifier for this interface is 0xb0202a11.
     * 0xb0202a11 ===
     *   bytes4(keccak256('transferAndCall(address,uint256)')) ^
     *   bytes4(keccak256('transferAndCall(address,uint256,bytes)')) ^
     *   bytes4(keccak256('transferFromAndCall(address,address,uint256)')) ^
     *   bytes4(keccak256('transferFromAndCall(address,address,uint256,bytes)')) ^
     *   bytes4(keccak256('approveAndCall(address,uint256)')) ^
     *   bytes4(keccak256('approveAndCall(address,uint256,bytes)'))
     */

    /**
     * @dev Moves a `value` amount of tokens from the caller's account to `to`
     * and then calls {IERC1363Receiver-onTransferReceived} on `to`.
     * @param to The address which you want to transfer to.
     * @param value The amount of tokens to be transferred.
     * @return A boolean value indicating whether the operation succeeded unless throwing.
     */
    function transferAndCall(address to, uint256 value) external returns (bool);

    /**
     * @dev Moves a `value` amount of tokens from the caller's account to `to`
     * and then calls {IERC1363Receiver-onTransferReceived} on `to`.
     * @param to The address which you want to transfer to.
     * @param value The amount of tokens to be transferred.
     * @param data Additional data with no specified format, sent in call to `to`.
     * @return A boolean value indicating whether the operation succeeded unless throwing.
     */
    function transferAndCall(address to, uint256 value, bytes calldata data) external returns (bool);

    /**
     * @dev Moves a `value` amount of tokens from `from` to `to` using the allowance mechanism
     * and then calls {IERC1363Receiver-onTransferReceived} on `to`.
     * @param from The address which you want to send tokens from.
     * @param to The address which you want to transfer to.
     * @param value The amount of tokens to be transferred.
     * @return A boolean value indicating whether the operation succeeded unless throwing.
     */
    function transferFromAndCall(address from, address to, uint256 value) external returns (bool);

    /**
     * @dev Moves a `value` amount of tokens from `from` to `to` using the allowance mechanism
     * and then calls {IERC1363Receiver-onTransferReceived} on `to`.
     * @param from The address which you want to send tokens from.
     * @param to The address which you want to transfer to.
     * @param value The amount of tokens to be transferred.
     * @param data Additional data with no specified format, sent in call to `to`.
     * @return A boolean value indicating whether the operation succeeded unless throwing.
     */
    function transferFromAndCall(address from, address to, uint256 value, bytes calldata data) external returns (bool);

    /**
     * @dev Sets a `value` amount of tokens as the allowance of `spender` over the
     * caller's tokens and then calls {IERC1363Spender-onApprovalReceived} on `spender`.
     * @param spender The address which will spend the funds.
     * @param value The amount of tokens to be spent.
     * @return A boolean value indicating whether the operation succeeded unless throwing.
     */
    function approveAndCall(address spender, uint256 value) external returns (bool);

    /**
     * @dev Sets a `value` amount of tokens as the allowance of `spender` over the
     * caller's tokens and then calls {IERC1363Spender-onApprovalReceived} on `spender`.
     * @param spender The address which will spend the funds.
     * @param value The amount of tokens to be spent.
     * @param data Additional data with no specified format, sent in call to `spender`.
     * @return A boolean value indicating whether the operation succeeded unless throwing.
     */
    function approveAndCall(address spender, uint256 value, bytes calldata data) external returns (bool);
}

// ============================================================
// FILE: node_modules/@openzeppelin/contracts/interfaces/IERC165.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.4.0) (interfaces/IERC165.sol)

pragma solidity >=0.4.16;

import {IERC165} from "../utils/introspection/IERC165.sol";

// ============================================================
// FILE: node_modules/@openzeppelin/contracts/interfaces/IERC20.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.4.0) (interfaces/IERC20.sol)

pragma solidity >=0.4.16;

import {IERC20} from "../token/ERC20/IERC20.sol";

// ============================================================
// FILE: node_modules/@openzeppelin/contracts/interfaces/IERC4626.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.4.0) (interfaces/IERC4626.sol)

pragma solidity >=0.6.2;

import {IERC20} from "../token/ERC20/IERC20.sol";
import {IERC20Metadata} from "../token/ERC20/extensions/IERC20Metadata.sol";

/**
 * @dev Interface of the ERC-4626 "Tokenized Vault Standard", as defined in
 * https://eips.ethereum.org/EIPS/eip-4626[ERC-4626].
 */
interface IERC4626 is IERC20, IERC20Metadata {
    event Deposit(address indexed sender, address indexed owner, uint256 assets, uint256 shares);

    event Withdraw(
        address indexed sender,
        address indexed receiver,
        address indexed owner,
        uint256 assets,
        uint256 shares
    );

    /**
     * @dev Returns the address of the underlying token used for the Vault for accounting, depositing, and withdrawing.
     *
     * - MUST be an ERC-20 token contract.
     * - MUST NOT revert.
     */
    function asset() external view returns (address assetTokenAddress);

    /**
     * @dev Returns the total amount of the underlying asset that is “managed” by Vault.
     *
     * - SHOULD include any compounding that occurs from yield.
     * - MUST be inclusive of any fees that are charged against assets in the Vault.
     * - MUST NOT revert.
     */
    function totalAssets() external view returns (uint256 totalManagedAssets);

    /**
     * @dev Returns the amount of shares that the Vault would exchange for the amount of assets provided, in an ideal
     * scenario where all the conditions are met.
     *
     * - MUST NOT be inclusive of any fees that are charged against assets in the Vault.
     * - MUST NOT show any variations depending on the caller.
     * - MUST NOT reflect slippage or other on-chain conditions, when performing the actual exchange.
     * - MUST NOT revert.
     *
     * NOTE: This calculation MAY NOT reflect the “per-user” price-per-share, and instead should reflect the
     * “average-user’s” price-per-share, meaning what the average user should expect to see when exchanging to and
     * from.
     */
    function convertToShares(uint256 assets) external view returns (uint256 shares);

    /**
     * @dev Returns the amount of assets that the Vault would exchange for the amount of shares provided, in an ideal
     * scenario where all the conditions are met.
     *
     * - MUST NOT be inclusive of any fees that are charged against assets in the Vault.
     * - MUST NOT show any variations depending on the caller.
     * - MUST NOT reflect slippage or other on-chain conditions, when performing the actual exchange.
     * - MUST NOT revert.
     *
     * NOTE: This calculation MAY NOT reflect the “per-user” price-per-share, and instead should reflect the
     * “average-user’s” price-per-share, meaning what the average user should expect to see when exchanging to and
     * from.
     */
    function convertToAssets(uint256 shares) external view returns (uint256 assets);

    /**
     * @dev Returns the maximum amount of the underlying asset that can be deposited into the Vault for the receiver,
     * through a deposit call.
     *
     * - MUST return a limited value if receiver is subject to some deposit limit.
     * - MUST return 2 ** 256 - 1 if there is no limit on the maximum amount of assets that may be deposited.
     * - MUST NOT revert.
     */
    function maxDeposit(address receiver) external view returns (uint256 maxAssets);

    /**
     * @dev Allows an on-chain or off-chain user to simulate the effects of their deposit at the current block, given
     * current on-chain conditions.
     *
     * - MUST return as close to and no more than the exact amount of Vault shares that would be minted in a deposit
     *   call in the same transaction. I.e. deposit should return the same or more shares as previewDeposit if called
     *   in the same transaction.
     * - MUST NOT account for deposit limits like those returned from maxDeposit and should always act as though the
     *   deposit would be accepted, regardless if the user has enough tokens approved, etc.
     * - MUST be inclusive of deposit fees. Integrators should be aware of the existence of deposit fees.
     * - MUST NOT revert.
     *
     * NOTE: any unfavorable discrepancy between convertToShares and previewDeposit SHOULD be considered slippage in
     * share price or some other type of condition, meaning the depositor will lose assets by depositing.
     */
    function previewDeposit(uint256 assets) external view returns (uint256 shares);

    /**
     * @dev Mints shares Vault shares to receiver by depositing exactly amount of underlying tokens.
     *
     * - MUST emit the Deposit event.
     * - MAY support an additional flow in which the underlying tokens are owned by the Vault contract before the
     *   deposit execution, and are accounted for during deposit.
     * - MUST revert if all of assets cannot be deposited (due to deposit limit being reached, slippage, the user not
     *   approving enough underlying tokens to the Vault contract, etc).
     *
     * NOTE: most implementations will require pre-approval of the Vault with the Vault’s underlying asset token.
     */
    function deposit(uint256 assets, address receiver) external returns (uint256 shares);

    /**
     * @dev Returns the maximum amount of the Vault shares that can be minted for the receiver, through a mint call.
     * - MUST return a limited value if receiver is subject to some mint limit.
     * - MUST return 2 ** 256 - 1 if there is no limit on the maximum amount of shares that may be minted.
     * - MUST NOT revert.
     */
    function maxMint(address receiver) external view returns (uint256 maxShares);

    /**
     * @dev Allows an on-chain or off-chain user to simulate the effects of their mint at the current block, given
     * current on-chain conditions.
     *
     * - MUST return as close to and no fewer than the exact amount of assets that would be deposited in a mint call
     *   in the same transaction. I.e. mint should return the same or fewer assets as previewMint if called in the
     *   same transaction.
     * - MUST NOT account for mint limits like those returned from maxMint and should always act as though the mint
     *   would be accepted, regardless if the user has enough tokens approved, etc.
     * - MUST be inclusive of deposit fees. Integrators should be aware of the existence of deposit fees.
     * - MUST NOT revert.
     *
     * NOTE: any unfavorable discrepancy between convertToAssets and previewMint SHOULD be considered slippage in
     * share price or some other type of condition, meaning the depositor will lose assets by minting.
     */
    function previewMint(uint256 shares) external view returns (uint256 assets);

    /**
     * @dev Mints exactly shares Vault shares to receiver by depositing amount of underlying tokens.
     *
     * - MUST emit the Deposit event.
     * - MAY support an additional flow in which the underlying tokens are owned by the Vault contract before the mint
     *   execution, and are accounted for during mint.
     * - MUST revert if all of shares cannot be minted (due to deposit limit being reached, slippage, the user not
     *   approving enough underlying tokens to the Vault contract, etc).
     *
     * NOTE: most implementations will require pre-approval of the Vault with the Vault’s underlying asset token.
     */
    function mint(uint256 shares, address receiver) external returns (uint256 assets);

    /**
     * @dev Returns the maximum amount of the underlying asset that can be withdrawn from the owner balance in the
     * Vault, through a withdraw call.
     *
     * - MUST return a limited value if owner is subject to some withdrawal limit or timelock.
     * - MUST NOT revert.
     */
    function maxWithdraw(address owner) external view returns (uint256 maxAssets);

    /**
     * @dev Allows an on-chain or off-chain user to simulate the effects of their withdrawal at the current block,
     * given current on-chain conditions.
     *
     * - MUST return as close to and no fewer than the exact amount of Vault shares that would be burned in a withdraw
     *   call in the same transaction. I.e. withdraw should return the same or fewer shares as previewWithdraw if
     *   called
     *   in the same transaction.
     * - MUST NOT account for withdrawal limits like those returned from maxWithdraw and should always act as though
     *   the withdrawal would be accepted, regardless if the user has enough shares, etc.
     * - MUST be inclusive of withdrawal fees. Integrators should be aware of the existence of withdrawal fees.
     * - MUST NOT revert.
     *
     * NOTE: any unfavorable discrepancy between convertToShares and previewWithdraw SHOULD be considered slippage in
     * share price or some other type of condition, meaning the depositor will lose assets by depositing.
     */
    function previewWithdraw(uint256 assets) external view returns (uint256 shares);

    /**
     * @dev Burns shares from owner and sends exactly assets of underlying tokens to receiver.
     *
     * - MUST emit the Withdraw event.
     * - MAY support an additional flow in which the underlying tokens are owned by the Vault contract before the
     *   withdraw execution, and are accounted for during withdraw.
     * - MUST revert if all of assets cannot be withdrawn (due to withdrawal limit being reached, slippage, the owner
     *   not having enough shares, etc).
     *
     * Note that some implementations will require pre-requesting to the Vault before a withdrawal may be performed.
     * Those methods should be performed separately.
     */
    function withdraw(uint256 assets, address receiver, address owner) external returns (uint256 shares);

    /**
     * @dev Returns the maximum amount of Vault shares that can be redeemed from the owner balance in the Vault,
     * through a redeem call.
     *
     * - MUST return a limited value if owner is subject to some withdrawal limit or timelock.
     * - MUST return balanceOf(owner) if owner is not subject to any withdrawal limit or timelock.
     * - MUST NOT revert.
     */
    function maxRedeem(address owner) external view returns (uint256 maxShares);

    /**
     * @dev Allows an on-chain or off-chain user to simulate the effects of their redemption at the current block,
     * given current on-chain conditions.
     *
     * - MUST return as close to and no more than the exact amount of assets that would be withdrawn in a redeem call
     *   in the same transaction. I.e. redeem should return the same or more assets as previewRedeem if called in the
     *   same transaction.
     * - MUST NOT account for redemption limits like those returned from maxRedeem and should always act as though the
     *   redemption would be accepted, regardless if the user has enough shares, etc.
     * - MUST be inclusive of withdrawal fees. Integrators should be aware of the existence of withdrawal fees.
     * - MUST NOT revert.
     *
     * NOTE: any unfavorable discrepancy between convertToAssets and previewRedeem SHOULD be considered slippage in
     * share price or some other type of condition, meaning the depositor will lose assets by redeeming.
     */
    function previewRedeem(uint256 shares) external view returns (uint256 assets);

    /**
     * @dev Burns exactly shares from owner and sends assets of underlying tokens to receiver.
     *
     * - MUST emit the Withdraw event.
     * - MAY support an additional flow in which the underlying tokens are owned by the Vault contract before the
     *   redeem execution, and are accounted for during redeem.
     * - MUST revert if all of shares cannot be redeemed (due to withdrawal limit being reached, slippage, the owner
     *   not having enough shares, etc).
     *
     * NOTE: some implementations will require pre-requesting to the Vault before a withdrawal may be performed.
     * Those methods should be performed separately.
     */
    function redeem(uint256 shares, address receiver, address owner) external returns (uint256 assets);
}

// ============================================================
// FILE: node_modules/@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.4.0) (token/ERC20/extensions/IERC20Metadata.sol)

pragma solidity >=0.6.2;

import {IERC20} from "../IERC20.sol";

/**
 * @dev Interface for the optional metadata functions from the ERC-20 standard.
 */
interface IERC20Metadata is IERC20 {
    /**
     * @dev Returns the name of the token.
     */
    function name() external view returns (string memory);

    /**
     * @dev Returns the symbol of the token.
     */
    function symbol() external view returns (string memory);

    /**
     * @dev Returns the decimals places of the token.
     */
    function decimals() external view returns (uint8);
}

// ============================================================
// FILE: node_modules/@openzeppelin/contracts/token/ERC20/IERC20.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.4.0) (token/ERC20/IERC20.sol)

pragma solidity >=0.4.16;

/**
 * @dev Interface of the ERC-20 standard as defined in the ERC.
 */
interface IERC20 {
    /**
     * @dev Emitted when `value` tokens are moved from one account (`from`) to
     * another (`to`).
     *
     * Note that `value` may be zero.
     */
    event Transfer(address indexed from, address indexed to, uint256 value);

    /**
     * @dev Emitted when the allowance of a `spender` for an `owner` is set by
     * a call to {approve}. `value` is the new allowance.
     */
    event Approval(address indexed owner, address indexed spender, uint256 value);

    /**
     * @dev Returns the value of tokens in existence.
     */
    function totalSupply() external view returns (uint256);

    /**
     * @dev Returns the value of tokens owned by `account`.
     */
    function balanceOf(address account) external view returns (uint256);

    /**
     * @dev Moves a `value` amount of tokens from the caller's account to `to`.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    function transfer(address to, uint256 value) external returns (bool);

    /**
     * @dev Returns the remaining number of tokens that `spender` will be
     * allowed to spend on behalf of `owner` through {transferFrom}. This is
     * zero by default.
     *
     * This value changes when {approve} or {transferFrom} are called.
     */
    function allowance(address owner, address spender) external view returns (uint256);

    /**
     * @dev Sets a `value` amount of tokens as the allowance of `spender` over the
     * caller's tokens.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * IMPORTANT: Beware that changing an allowance with this method brings the risk
     * that someone may use both the old and the new allowance by unfortunate
     * transaction ordering. One possible solution to mitigate this race
     * condition is to first reduce the spender's allowance to 0 and set the
     * desired value afterwards:
     * https://github.com/ethereum/EIPs/issues/20#issuecomment-263524729
     *
     * Emits an {Approval} event.
     */
    function approve(address spender, uint256 value) external returns (bool);

    /**
     * @dev Moves a `value` amount of tokens from `from` to `to` using the
     * allowance mechanism. `value` is then deducted from the caller's
     * allowance.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    function transferFrom(address from, address to, uint256 value) external returns (bool);
}

// ============================================================
// FILE: node_modules/@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.3.0) (token/ERC20/utils/SafeERC20.sol)

pragma solidity ^0.8.20;

import {IERC20} from "../IERC20.sol";
import {IERC1363} from "../../../interfaces/IERC1363.sol";

/**
 * @title SafeERC20
 * @dev Wrappers around ERC-20 operations that throw on failure (when the token
 * contract returns false). Tokens that return no value (and instead revert or
 * throw on failure) are also supported, non-reverting calls are assumed to be
 * successful.
 * To use this library you can add a `using SafeERC20 for IERC20;` statement to your contract,
 * which allows you to call the safe operations as `token.safeTransfer(...)`, etc.
 */
library SafeERC20 {
    /**
     * @dev An operation with an ERC-20 token failed.
     */
    error SafeERC20FailedOperation(address token);

    /**
     * @dev Indicates a failed `decreaseAllowance` request.
     */
    error SafeERC20FailedDecreaseAllowance(address spender, uint256 currentAllowance, uint256 requestedDecrease);

    /**
     * @dev Transfer `value` amount of `token` from the calling contract to `to`. If `token` returns no value,
     * non-reverting calls are assumed to be successful.
     */
    function safeTransfer(IERC20 token, address to, uint256 value) internal {
        _callOptionalReturn(token, abi.encodeCall(token.transfer, (to, value)));
    }

    /**
     * @dev Transfer `value` amount of `token` from `from` to `to`, spending the approval given by `from` to the
     * calling contract. If `token` returns no value, non-reverting calls are assumed to be successful.
     */
    function safeTransferFrom(IERC20 token, address from, address to, uint256 value) internal {
        _callOptionalReturn(token, abi.encodeCall(token.transferFrom, (from, to, value)));
    }

    /**
     * @dev Variant of {safeTransfer} that returns a bool instead of reverting if the operation is not successful.
     */
    function trySafeTransfer(IERC20 token, address to, uint256 value) internal returns (bool) {
        return _callOptionalReturnBool(token, abi.encodeCall(token.transfer, (to, value)));
    }

    /**
     * @dev Variant of {safeTransferFrom} that returns a bool instead of reverting if the operation is not successful.
     */
    function trySafeTransferFrom(IERC20 token, address from, address to, uint256 value) internal returns (bool) {
        return _callOptionalReturnBool(token, abi.encodeCall(token.transferFrom, (from, to, value)));
    }

    /**
     * @dev Increase the calling contract's allowance toward `spender` by `value`. If `token` returns no value,
     * non-reverting calls are assumed to be successful.
     *
     * IMPORTANT: If the token implements ERC-7674 (ERC-20 with temporary allowance), and if the "client"
     * smart contract uses ERC-7674 to set temporary allowances, then the "client" smart contract should avoid using
     * this function. Performing a {safeIncreaseAllowance} or {safeDecreaseAllowance} operation on a token contract
     * that has a non-zero temporary allowance (for that particular owner-spender) will result in unexpected behavior.
     */
    function safeIncreaseAllowance(IERC20 token, address spender, uint256 value) internal {
        uint256 oldAllowance = token.allowance(address(this), spender);
        forceApprove(token, spender, oldAllowance + value);
    }

    /**
     * @dev Decrease the calling contract's allowance toward `spender` by `requestedDecrease`. If `token` returns no
     * value, non-reverting calls are assumed to be successful.
     *
     * IMPORTANT: If the token implements ERC-7674 (ERC-20 with temporary allowance), and if the "client"
     * smart contract uses ERC-7674 to set temporary allowances, then the "client" smart contract should avoid using
     * this function. Performing a {safeIncreaseAllowance} or {safeDecreaseAllowance} operation on a token contract
     * that has a non-zero temporary allowance (for that particular owner-spender) will result in unexpected behavior.
     */
    function safeDecreaseAllowance(IERC20 token, address spender, uint256 requestedDecrease) internal {
        unchecked {
            uint256 currentAllowance = token.allowance(address(this), spender);
            if (currentAllowance < requestedDecrease) {
                revert SafeERC20FailedDecreaseAllowance(spender, currentAllowance, requestedDecrease);
            }
            forceApprove(token, spender, currentAllowance - requestedDecrease);
        }
    }

    /**
     * @dev Set the calling contract's allowance toward `spender` to `value`. If `token` returns no value,
     * non-reverting calls are assumed to be successful. Meant to be used with tokens that require the approval
     * to be set to zero before setting it to a non-zero value, such as USDT.
     *
     * NOTE: If the token implements ERC-7674, this function will not modify any temporary allowance. This function
     * only sets the "standard" allowance. Any temporary allowance will remain active, in addition to the value being
     * set here.
     */
    function forceApprove(IERC20 token, address spender, uint256 value) internal {
        bytes memory approvalCall = abi.encodeCall(token.approve, (spender, value));

        if (!_callOptionalReturnBool(token, approvalCall)) {
            _callOptionalReturn(token, abi.encodeCall(token.approve, (spender, 0)));
            _callOptionalReturn(token, approvalCall);
        }
    }

    /**
     * @dev Performs an {ERC1363} transferAndCall, with a fallback to the simple {ERC20} transfer if the target has no
     * code. This can be used to implement an {ERC721}-like safe transfer that rely on {ERC1363} checks when
     * targeting contracts.
     *
     * Reverts if the returned value is other than `true`.
     */
    function transferAndCallRelaxed(IERC1363 token, address to, uint256 value, bytes memory data) internal {
        if (to.code.length == 0) {
            safeTransfer(token, to, value);
        } else if (!token.transferAndCall(to, value, data)) {
            revert SafeERC20FailedOperation(address(token));
        }
    }

    /**
     * @dev Performs an {ERC1363} transferFromAndCall, with a fallback to the simple {ERC20} transferFrom if the target
     * has no code. This can be used to implement an {ERC721}-like safe transfer that rely on {ERC1363} checks when
     * targeting contracts.
     *
     * Reverts if the returned value is other than `true`.
     */
    function transferFromAndCallRelaxed(
        IERC1363 token,
        address from,
        address to,
        uint256 value,
        bytes memory data
    ) internal {
        if (to.code.length == 0) {
            safeTransferFrom(token, from, to, value);
        } else if (!token.transferFromAndCall(from, to, value, data)) {
            revert SafeERC20FailedOperation(address(token));
        }
    }

    /**
     * @dev Performs an {ERC1363} approveAndCall, with a fallback to the simple {ERC20} approve if the target has no
     * code. This can be used to implement an {ERC721}-like safe transfer that rely on {ERC1363} checks when
     * targeting contracts.
     *
     * NOTE: When the recipient address (`to`) has no code (i.e. is an EOA), this function behaves as {forceApprove}.
     * Opposedly, when the recipient address (`to`) has code, this function only attempts to call {ERC1363-approveAndCall}
     * once without retrying, and relies on the returned value to be true.
     *
     * Reverts if the returned value is other than `true`.
     */
    function approveAndCallRelaxed(IERC1363 token, address to, uint256 value, bytes memory data) internal {
        if (to.code.length == 0) {
            forceApprove(token, to, value);
        } else if (!token.approveAndCall(to, value, data)) {
            revert SafeERC20FailedOperation(address(token));
        }
    }

    /**
     * @dev Imitates a Solidity high-level call (i.e. a regular function call to a contract), relaxing the requirement
     * on the return value: the return value is optional (but if data is returned, it must not be false).
     * @param token The token targeted by the call.
     * @param data The call data (encoded using abi.encode or one of its variants).
     *
     * This is a variant of {_callOptionalReturnBool} that reverts if call fails to meet the requirements.
     */
    function _callOptionalReturn(IERC20 token, bytes memory data) private {
        uint256 returnSize;
        uint256 returnValue;
        assembly ("memory-safe") {
            let success := call(gas(), token, 0, add(data, 0x20), mload(data), 0, 0x20)
            // bubble errors
            if iszero(success) {
                let ptr := mload(0x40)
                returndatacopy(ptr, 0, returndatasize())
                revert(ptr, returndatasize())
            }
            returnSize := returndatasize()
            returnValue := mload(0)
        }

        if (returnSize == 0 ? address(token).code.length == 0 : returnValue != 1) {
            revert SafeERC20FailedOperation(address(token));
        }
    }

    /**
     * @dev Imitates a Solidity high-level call (i.e. a regular function call to a contract), relaxing the requirement
     * on the return value: the return value is optional (but if data is returned, it must not be false).
     * @param token The token targeted by the call.
     * @param data The call data (encoded using abi.encode or one of its variants).
     *
     * This is a variant of {_callOptionalReturn} that silently catches all reverts and returns a bool instead.
     */
    function _callOptionalReturnBool(IERC20 token, bytes memory data) private returns (bool) {
        bool success;
        uint256 returnSize;
        uint256 returnValue;
        assembly ("memory-safe") {
            success := call(gas(), token, 0, add(data, 0x20), mload(data), 0, 0x20)
            returnSize := returndatasize()
            returnValue := mload(0)
        }
        return success && (returnSize == 0 ? address(token).code.length > 0 : returnValue == 1);
    }
}

// ============================================================
// FILE: node_modules/@openzeppelin/contracts/utils/Context.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.1) (utils/Context.sol)

pragma solidity ^0.8.20;

/**
 * @dev Provides information about the current execution context, including the
 * sender of the transaction and its data. While these are generally available
 * via msg.sender and msg.data, they should not be accessed in such a direct
 * manner, since when dealing with meta-transactions the account sending and
 * paying for execution may not be the actual sender (as far as an application
 * is concerned).
 *
 * This contract is only required for intermediate, library-like contracts.
 */
abstract contract Context {
    function _msgSender() internal view virtual returns (address) {
        return msg.sender;
    }

    function _msgData() internal view virtual returns (bytes calldata) {
        return msg.data;
    }

    function _contextSuffixLength() internal view virtual returns (uint256) {
        return 0;
    }
}

// ============================================================
// FILE: node_modules/@openzeppelin/contracts/utils/introspection/IERC165.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.4.0) (utils/introspection/IERC165.sol)

pragma solidity >=0.4.16;

/**
 * @dev Interface of the ERC-165 standard, as defined in the
 * https://eips.ethereum.org/EIPS/eip-165[ERC].
 *
 * Implementers can declare support of contract interfaces, which can then be
 * queried by others ({ERC165Checker}).
 *
 * For an implementation, see {ERC165}.
 */
interface IERC165 {
    /**
     * @dev Returns true if this contract implements the interface defined by
     * `interfaceId`. See the corresponding
     * https://eips.ethereum.org/EIPS/eip-165#how-interfaces-are-identified[ERC section]
     * to learn more about how these ids are created.
     *
     * This function call must use less than 30 000 gas.
     */
    function supportsInterface(bytes4 interfaceId) external view returns (bool);
}

// ============================================================
// FILE: node_modules/erc721a/contracts/IERC721A.sol
// ============================================================

// SPDX-License-Identifier: MIT
// ERC721A Contracts v4.3.0
// Creator: Chiru Labs

pragma solidity ^0.8.4;

/**
 * @dev Interface of ERC721A.
 */
interface IERC721A {
    /**
     * The caller must own the token or be an approved operator.
     */
    error ApprovalCallerNotOwnerNorApproved();

    /**
     * The token does not exist.
     */
    error ApprovalQueryForNonexistentToken();

    /**
     * Cannot query the balance for the zero address.
     */
    error BalanceQueryForZeroAddress();

    /**
     * Cannot mint to the zero address.
     */
    error MintToZeroAddress();

    /**
     * The quantity of tokens minted must be more than zero.
     */
    error MintZeroQuantity();

    /**
     * The token does not exist.
     */
    error OwnerQueryForNonexistentToken();

    /**
     * The caller must own the token or be an approved operator.
     */
    error TransferCallerNotOwnerNorApproved();

    /**
     * The token must be owned by `from`.
     */
    error TransferFromIncorrectOwner();

    /**
     * Cannot safely transfer to a contract that does not implement the
     * ERC721Receiver interface.
     */
    error TransferToNonERC721ReceiverImplementer();

    /**
     * Cannot transfer to the zero address.
     */
    error TransferToZeroAddress();

    /**
     * The token does not exist.
     */
    error URIQueryForNonexistentToken();

    /**
     * The `quantity` minted with ERC2309 exceeds the safety limit.
     */
    error MintERC2309QuantityExceedsLimit();

    /**
     * The `extraData` cannot be set on an unintialized ownership slot.
     */
    error OwnershipNotInitializedForExtraData();

    /**
     * `_sequentialUpTo()` must be greater than `_startTokenId()`.
     */
    error SequentialUpToTooSmall();

    /**
     * The `tokenId` of a sequential mint exceeds `_sequentialUpTo()`.
     */
    error SequentialMintExceedsLimit();

    /**
     * Spot minting requires a `tokenId` greater than `_sequentialUpTo()`.
     */
    error SpotMintTokenIdTooSmall();

    /**
     * Cannot mint over a token that already exists.
     */
    error TokenAlreadyExists();

    /**
     * The feature is not compatible with spot mints.
     */
    error NotCompatibleWithSpotMints();

    // =============================================================
    //                            STRUCTS
    // =============================================================

    struct TokenOwnership {
        // The address of the owner.
        address addr;
        // Stores the start time of ownership with minimal overhead for tokenomics.
        uint64 startTimestamp;
        // Whether the token has been burned.
        bool burned;
        // Arbitrary data similar to `startTimestamp` that can be set via {_extraData}.
        uint24 extraData;
    }

    // =============================================================
    //                         TOKEN COUNTERS
    // =============================================================

    /**
     * @dev Returns the total number of tokens in existence.
     * Burned tokens will reduce the count.
     * To get the total number of tokens minted, please see {_totalMinted}.
     */
    function totalSupply() external view returns (uint256);

    // =============================================================
    //                            IERC165
    // =============================================================

    /**
     * @dev Returns true if this contract implements the interface defined by
     * `interfaceId`. See the corresponding
     * [EIP section](https://eips.ethereum.org/EIPS/eip-165#how-interfaces-are-identified)
     * to learn more about how these ids are created.
     *
     * This function call must use less than 30000 gas.
     */
    function supportsInterface(bytes4 interfaceId) external view returns (bool);

    // =============================================================
    //                            IERC721
    // =============================================================

    /**
     * @dev Emitted when `tokenId` token is transferred from `from` to `to`.
     */
    event Transfer(address indexed from, address indexed to, uint256 indexed tokenId);

    /**
     * @dev Emitted when `owner` enables `approved` to manage the `tokenId` token.
     */
    event Approval(address indexed owner, address indexed approved, uint256 indexed tokenId);

    /**
     * @dev Emitted when `owner` enables or disables
     * (`approved`) `operator` to manage all of its assets.
     */
    event ApprovalForAll(address indexed owner, address indexed operator, bool approved);

    /**
     * @dev Returns the number of tokens in `owner`'s account.
     */
    function balanceOf(address owner) external view returns (uint256 balance);

    /**
     * @dev Returns the owner of the `tokenId` token.
     *
     * Requirements:
     *
     * - `tokenId` must exist.
     */
    function ownerOf(uint256 tokenId) external view returns (address owner);

    /**
     * @dev Safely transfers `tokenId` token from `from` to `to`,
     * checking first that contract recipients are aware of the ERC721 protocol
     * to prevent tokens from being forever locked.
     *
     * Requirements:
     *
     * - `from` cannot be the zero address.
     * - `to` cannot be the zero address.
     * - `tokenId` token must exist and be owned by `from`.
     * - If the caller is not `from`, it must be have been allowed to move
     * this token by either {approve} or {setApprovalForAll}.
     * - If `to` refers to a smart contract, it must implement
     * {IERC721Receiver-onERC721Received}, which is called upon a safe transfer.
     *
     * Emits a {Transfer} event.
     */
    function safeTransferFrom(
        address from,
        address to,
        uint256 tokenId,
        bytes calldata data
    ) external payable;

    /**
     * @dev Equivalent to `safeTransferFrom(from, to, tokenId, '')`.
     */
    function safeTransferFrom(
        address from,
        address to,
        uint256 tokenId
    ) external payable;

    /**
     * @dev Transfers `tokenId` from `from` to `to`.
     *
     * WARNING: Usage of this method is discouraged, use {safeTransferFrom}
     * whenever possible.
     *
     * Requirements:
     *
     * - `from` cannot be the zero address.
     * - `to` cannot be the zero address.
     * - `tokenId` token must be owned by `from`.
     * - If the caller is not `from`, it must be approved to move this token
     * by either {approve} or {setApprovalForAll}.
     *
     * Emits a {Transfer} event.
     */
    function transferFrom(
        address from,
        address to,
        uint256 tokenId
    ) external payable;

    /**
     * @dev Gives permission to `to` to transfer `tokenId` token to another account.
     * The approval is cleared when the token is transferred.
     *
     * Only a single account can be approved at a time, so approving the
     * zero address clears previous approvals.
     *
     * Requirements:
     *
     * - The caller must own the token or be an approved operator.
     * - `tokenId` must exist.
     *
     * Emits an {Approval} event.
     */
    function approve(address to, uint256 tokenId) external payable;

    /**
     * @dev Approve or remove `operator` as an operator for the caller.
     * Operators can call {transferFrom} or {safeTransferFrom}
     * for any token owned by the caller.
     *
     * Requirements:
     *
     * - The `operator` cannot be the caller.
     *
     * Emits an {ApprovalForAll} event.
     */
    function setApprovalForAll(address operator, bool _approved) external;

    /**
     * @dev Returns the account approved for `tokenId` token.
     *
     * Requirements:
     *
     * - `tokenId` must exist.
     */
    function getApproved(uint256 tokenId) external view returns (address operator);

    /**
     * @dev Returns if the `operator` is allowed to manage all of the assets of `owner`.
     *
     * See {setApprovalForAll}.
     */
    function isApprovedForAll(address owner, address operator) external view returns (bool);

    // =============================================================
    //                        IERC721Metadata
    // =============================================================

    /**
     * @dev Returns the token collection name.
     */
    function name() external view returns (string memory);

    /**
     * @dev Returns the token collection symbol.
     */
    function symbol() external view returns (string memory);

    /**
     * @dev Returns the Uniform Resource Identifier (URI) for `tokenId` token.
     */
    function tokenURI(uint256 tokenId) external view returns (string memory);

    // =============================================================
    //                           IERC2309
    // =============================================================

    /**
     * @dev Emitted when tokens in `fromTokenId` to `toTokenId`
     * (inclusive) is transferred from `from` to `to`, as defined in the
     * [ERC2309](https://eips.ethereum.org/EIPS/eip-2309) standard.
     *
     * See {_mintERC2309} for more details.
     */
    event ConsecutiveTransfer(uint256 indexed fromTokenId, uint256 toTokenId, address indexed from, address indexed to);
}

// ============================================================
// FILE: node_modules/erc721a/contracts/interfaces/IERC721A.sol
// ============================================================

// SPDX-License-Identifier: MIT
// ERC721A Contracts v4.3.0
// Creator: Chiru Labs

pragma solidity ^0.8.4;

import '../IERC721A.sol';
