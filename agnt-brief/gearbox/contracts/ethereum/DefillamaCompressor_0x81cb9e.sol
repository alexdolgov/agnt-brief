// ============================================================
// FILE: contracts/compressors/DefillamaCompressor.sol
// ============================================================

// SPDX-License-Identifier: MIT
// Gearbox Protocol. Generalized leverage for DeFi protocols
// (c) Gearbox Foundation, 2025.
pragma solidity ^0.8.23;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";

import {IAddressProvider} from "@gearbox-protocol/permissionless/contracts/interfaces/IAddressProvider.sol";
import {IMarketConfigurator} from "@gearbox-protocol/permissionless/contracts/interfaces/IMarketConfigurator.sol";
import {IContractsRegister} from "@gearbox-protocol/permissionless/contracts/interfaces/IContractsRegister.sol";
import {IMarketConfiguratorFactory} from
    "@gearbox-protocol/permissionless/contracts/interfaces/IMarketConfiguratorFactory.sol";
import {
    AP_MARKET_CONFIGURATOR_FACTORY,
    NO_VERSION_CONTROL
} from "@gearbox-protocol/permissionless/contracts/libraries/ContractLiterals.sol";

import {ICreditAccountV3} from "@gearbox-protocol/core-v3/contracts/interfaces/ICreditAccountV3.sol";
import {ICreditManagerV3} from "@gearbox-protocol/core-v3/contracts/interfaces/ICreditManagerV3.sol";
import {IPoolV3} from "@gearbox-protocol/core-v3/contracts/interfaces/IPoolV3.sol";

import {AP_DEFILLAMA_COMPRESSOR} from "../libraries/Literals.sol";

import {DefillamaCreditAccountData, DefillamaTokenInfo, DefillamaPoolData} from "../types/Defillama.sol";
import {IDefillamaCompressor} from "../interfaces/IDefillamaCompressor.sol";

/// @title  Credit account compressor
/// @notice Allows to fetch data on all credit accounts matching certain criteria in an efficient manner
/// @dev    The contract is not gas optimized and is thus not recommended for on-chain use
/// @dev    Querying functions try to process as many accounts as possible and stop when they get close to gas limit
contract DefillamaCompressor is IDefillamaCompressor {
    struct Pool {
        address addr;
        address configurator;
    }

    /// @notice Contract version
    uint256 public constant override version = 3_10;

    /// @notice Contract type
    bytes32 public constant override contractType = AP_DEFILLAMA_COMPRESSOR;

    address public immutable addressProvider;

    /// @notice Constructor
    /// @param  addressProvider_ Address provider contract address
    constructor(address addressProvider_) {
        addressProvider = addressProvider_;
    }

    function getPools(address[] memory configurators) external view returns (DefillamaPoolData[] memory pools) {
        return _getPools(configurators);
    }

    function getPools() external view returns (DefillamaPoolData[] memory pools) {
        address mcFactory =
            IAddressProvider(addressProvider).getAddressOrRevert(AP_MARKET_CONFIGURATOR_FACTORY, NO_VERSION_CONTROL);
        address[] memory configurators = IMarketConfiguratorFactory(mcFactory).getMarketConfigurators();
        return _getPools(configurators);
    }

    function getCreditManagers(address[] memory configurators)
        external
        view
        returns (address[] memory creditManagers)
    {
        return _getCreditManagers(configurators);
    }

    function getCreditManagers() external view returns (address[] memory creditManagers) {
        address mcFactory =
            IAddressProvider(addressProvider).getAddressOrRevert(AP_MARKET_CONFIGURATOR_FACTORY, NO_VERSION_CONTROL);
        address[] memory configurators = IMarketConfiguratorFactory(mcFactory).getMarketConfigurators();
        return _getCreditManagers(configurators);
    }

    /// @notice Returns data for credit accounts in a given `creditManager`
    function getCreditAccounts(address creditManager)
        external
        view
        returns (DefillamaCreditAccountData[] memory data)
    {
        return _getCreditAccounts(creditManager, 0, type(uint256).max);
    }

    /// @dev Same as above but with limit and offset
    function getCreditAccounts(address creditManager, uint256 offset, uint256 limit)
        external
        view
        returns (DefillamaCreditAccountData[] memory data)
    {
        return _getCreditAccounts(creditManager, offset, limit);
    }

    // --------- //
    // INTERNALS //
    // --------- //

    function _getCreditAccounts(address creditManager, uint256 offset, uint256 limit)
        internal
        view
        returns (DefillamaCreditAccountData[] memory data)
    {
        uint256 len = ICreditManagerV3(creditManager).creditAccountsLen();

        if (offset >= len) {
            return new DefillamaCreditAccountData[](0);
        }
        address[] memory creditAccounts =
            ICreditManagerV3(creditManager).creditAccounts(offset, Math.min(len - offset, limit));

        data = new DefillamaCreditAccountData[](creditAccounts.length);
        for (uint256 i; i < creditAccounts.length; ++i) {
            data[i] = _getCreditAccountData(creditAccounts[i], creditManager);
        }
    }

    /// @dev Data loading implementation
    function _getCreditAccountData(address creditAccount, address creditManager)
        internal
        view
        returns (DefillamaCreditAccountData memory data)
    {
        data.creditAccount = creditAccount;

        (uint256 debt,,,, uint256 enabledTokensMask,,,) =
            ICreditManagerV3(creditManager).creditAccountInfo(creditAccount);
        data.debt = debt;
        // ignore tokens on zero-debt accounts
        if (debt == 0) {
            return data;
        }

        uint256 maxTokens = ICreditManagerV3(creditManager).collateralTokensCount();

        // the function is called for every account, so allocating an array of size `maxTokens` and trimming it
        // might cause issues with memory expansion and we must count the precise number of tokens in advance
        uint256 numTokens;
        uint256 returnedTokensMask;
        for (uint256 k; k < maxTokens; ++k) {
            uint256 mask = 1 << k;
            if (enabledTokensMask & mask == 0) {
                address token = ICreditManagerV3(creditManager).getTokenByMask(mask);
                try IERC20(token).balanceOf(creditAccount) returns (uint256 balance) {
                    if (balance <= 1) continue;
                } catch {
                    continue;
                }
            }
            ++numTokens;
            returnedTokensMask |= mask;
        }

        data.tokens = new DefillamaTokenInfo[](numTokens);
        uint256 i;
        while (returnedTokensMask != 0) {
            uint256 mask = returnedTokensMask & uint256(-int256(returnedTokensMask));
            address token = ICreditManagerV3(creditManager).getTokenByMask(mask);
            data.tokens[i].token = token;

            try IERC20(token).balanceOf(creditAccount) returns (uint256 balance) {
                data.tokens[i].balance = balance;
            } catch {}

            returnedTokensMask ^= mask;
            ++i;
        }
    }

    function _getPools(address[] memory configurators) internal view returns (DefillamaPoolData[] memory pools) {
        Pool[] memory _pools = _getPoolsInternal(configurators);
        pools = new DefillamaPoolData[](_pools.length);
        for (uint256 i; i < _pools.length; ++i) {
            Pool memory pool = _pools[i];
            pools[i] = DefillamaPoolData({
                pool: pool.addr,
                underlying: IPoolV3(pool.addr).asset(),
                totalBorrowed: IPoolV3(pool.addr).totalBorrowed(),
                availableLiquidity: IPoolV3(pool.addr).availableLiquidity()
            });
        }
    }

    function _getCreditManagers(address[] memory configurators)
        internal
        view
        returns (address[] memory creditManagers)
    {
        Pool[] memory pools = _getPoolsInternal(configurators);

        // rough estimate of maximum number of credit managers
        uint256 max;
        for (uint256 i; i < pools.length; ++i) {
            address cr = IMarketConfigurator(pools[i].configurator).contractsRegister();
            max += IContractsRegister(cr).getCreditManagers(pools[i].addr).length;
        }

        // allocate the array with maximum potentially needed size (total number of credit managers can be assumed
        // to be relatively small and the function is only called once, so memory expansion cost is not an issue)
        creditManagers = new address[](max);
        uint256 num;
        for (uint256 i; i < pools.length; ++i) {
            address cr = IMarketConfigurator(pools[i].configurator).contractsRegister();
            address[] memory managers = IContractsRegister(cr).getCreditManagers(pools[i].addr);
            for (uint256 j; j < managers.length; ++j) {
                creditManagers[num++] = managers[j];
            }
        }
        // trim the array to its actual size
        assembly {
            mstore(creditManagers, num)
        }
    }

    function _getPoolsInternal(address[] memory configurators) internal view returns (Pool[] memory pools) {
        uint256 numPools;
        for (uint256 i; i < configurators.length; ++i) {
            address contractsRegister = IMarketConfigurator(configurators[i]).contractsRegister();
            numPools += IContractsRegister(contractsRegister).getPools().length;
        }

        pools = new Pool[](numPools);
        uint256 num;

        for (uint256 i; i < configurators.length; ++i) {
            address contractsRegister = IMarketConfigurator(configurators[i]).contractsRegister();
            address[] memory poolsMC = IContractsRegister(contractsRegister).getPools();
            for (uint256 j; j < poolsMC.length; ++j) {
                address pool = poolsMC[j];

                pools[num++] = Pool({addr: pool, configurator: configurators[i]});
            }
        }
    }
}

// ============================================================
// FILE: contracts/interfaces/IDefillamaCompressor.sol
// ============================================================

// SPDX-License-Identifier: MIT
// Gearbox Protocol. Generalized leverage for DeFi protocols
// (c) Gearbox Foundation, 2025.
pragma solidity ^0.8.23;

import {IVersion} from "@gearbox-protocol/core-v3/contracts/interfaces/base/IVersion.sol";
import {DefillamaCreditAccountData, DefillamaPoolData} from "../types/Defillama.sol";

/// @title  Compressor contract for Defillama
interface IDefillamaCompressor is IVersion {
    /// @notice Returns data for pools in given configurators
    function getPools(address[] memory configurators) external view returns (DefillamaPoolData[] memory pools);

    /// @notice Returns data for pools in all configurators found in market configurator factory
    function getPools() external view returns (DefillamaPoolData[] memory pools);

    /// @notice Returns credit managers in given configurators
    function getCreditManagers(address[] memory configurators)
        external
        view
        returns (address[] memory creditManagers);

    /// @notice Returns credit managers in all configurators found in market configurator factory
    function getCreditManagers() external view returns (address[] memory creditManagers);

    /// @notice Returns data for credit accounts in a given `creditManager`
    function getCreditAccounts(address creditManager)
        external
        view
        returns (DefillamaCreditAccountData[] memory data);

    /// @dev Same as above but with offset and limit
    function getCreditAccounts(address creditManager, uint256 offset, uint256 limit)
        external
        view
        returns (DefillamaCreditAccountData[] memory data);
}

// ============================================================
// FILE: contracts/libraries/Literals.sol
// ============================================================

// SPDX-License-Identifier: MIT
// Gearbox Protocol. Generalized leverage for DeFi protocols
// (c) Gearbox Foundation, 2025.
pragma solidity ^0.8.23;

bytes32 constant AP_CREDIT_ACCOUNT_COMPRESSOR = "GLOBAL::ACCOUNT_COMPRESSOR";
bytes32 constant AP_CREDIT_SUITE_COMPRESSOR = "GLOBAL::CREDIT_SUITE_COMPRESSOR";
bytes32 constant AP_GAUGE_COMPRESSOR = "GLOBAL::GAUGE_COMPRESSOR";
bytes32 constant AP_MARKET_COMPRESSOR = "GLOBAL::MARKET_COMPRESSOR";
bytes32 constant AP_PERIPHERY_COMPRESSOR = "GLOBAL::PERIPHERY_COMPRESSOR";
bytes32 constant AP_PRICE_FEED_COMPRESSOR = "GLOBAL::PRICE_FEED_COMPRESSOR";
bytes32 constant AP_REWARDS_COMPRESSOR = "GLOBAL::REWARDS_COMPRESSOR";
bytes32 constant AP_TOKEN_COMPRESSOR = "GLOBAL::TOKEN_COMPRESSOR";
bytes32 constant AP_DEFILLAMA_COMPRESSOR = "GLOBAL::DEFILLAMA_COMPRESSOR";

// ============================================================
// FILE: contracts/types/Defillama.sol
// ============================================================

// SPDX-License-Identifier: MIT
// Gearbox Protocol. Generalized leverage for DeFi protocols
// (c) Gearbox Foundation, 2025.
pragma solidity ^0.8.23;

struct DefillamaCreditAccountData {
    address creditAccount;
    uint256 debt;
    DefillamaTokenInfo[] tokens;
}

struct DefillamaTokenInfo {
    address token;
    uint256 balance;
}

struct DefillamaPoolData {
    address pool;
    address underlying;
    uint256 availableLiquidity;
    uint256 totalBorrowed;
}

// ============================================================
// FILE: lib/@gearbox-protocol/core-v3/contracts/interfaces/base/IACLTrait.sol
// ============================================================

// SPDX-License-Identifier: MIT
// Gearbox Protocol. Generalized leverage for DeFi protocols
// (c) Gearbox Foundation, 2024.
pragma solidity ^0.8.17;

interface IACLTrait {
    function acl() external view returns (address);
}

// ============================================================
// FILE: lib/@gearbox-protocol/core-v3/contracts/interfaces/base/IAddressProvider.sol
// ============================================================

// SPDX-License-Identifier: MIT
// Gearbox Protocol. Generalized leverage for DeFi protocols
// (c) Gearbox Foundation, 2024.
pragma solidity ^0.8.17;

interface IAddressProvider {
    function getAddressOrRevert(bytes32 key, uint256 version) external view returns (address);
}

// ============================================================
// FILE: lib/@gearbox-protocol/core-v3/contracts/interfaces/base/IContractsRegister.sol
// ============================================================

// SPDX-License-Identifier: MIT
// Gearbox Protocol. Generalized leverage for DeFi protocols
// (c) Gearbox Foundation, 2024.
pragma solidity ^0.8.17;

interface IContractsRegister {
    function isPool(address) external view returns (bool);
    function getPools() external view returns (address[] memory);
    function isCreditManager(address) external view returns (bool);
    function getCreditManagers() external view returns (address[] memory);
}

// ============================================================
// FILE: lib/@gearbox-protocol/core-v3/contracts/interfaces/base/IContractsRegisterTrait.sol
// ============================================================

// SPDX-License-Identifier: MIT
// Gearbox Protocol. Generalized leverage for DeFi protocols
// (c) Gearbox Foundation, 2024.
pragma solidity ^0.8.17;

interface IContractsRegisterTrait {
    function contractsRegister() external view returns (address);
}

// ============================================================
// FILE: lib/@gearbox-protocol/core-v3/contracts/interfaces/base/IVersion.sol
// ============================================================

// SPDX-License-Identifier: MIT
// Gearbox Protocol. Generalized leverage for DeFi protocols
// (c) Gearbox Foundation, 2024.
pragma solidity ^0.8.17;

/// @title Version interface
/// @notice Defines contract version and type
interface IVersion {
    /// @notice Contract version
    function version() external view returns (uint256);

    /// @notice Contract type
    function contractType() external view returns (bytes32);
}

// ============================================================
// FILE: lib/@gearbox-protocol/core-v3/contracts/interfaces/ICreditAccountV3.sol
// ============================================================

// SPDX-License-Identifier: MIT
// Gearbox Protocol. Generalized leverage for DeFi protocols
// (c) Gearbox Foundation, 2024.
pragma solidity ^0.8.17;

import {IVersion} from "./base/IVersion.sol";

/// @title Credit account V3 interface
interface ICreditAccountV3 is IVersion {
    function factory() external view returns (address);

    function creditManager() external view returns (address);

    function safeTransfer(address token, address to, uint256 amount) external;

    function execute(address target, bytes calldata data) external returns (bytes memory result);

    function rescue(address target, bytes calldata data) external;
}

// ============================================================
// FILE: lib/@gearbox-protocol/core-v3/contracts/interfaces/ICreditManagerV3.sol
// ============================================================

// SPDX-License-Identifier: MIT
// Gearbox Protocol. Generalized leverage for DeFi protocols
// (c) Gearbox Foundation, 2024.
pragma solidity ^0.8.17;

import {IVersion} from "./base/IVersion.sol";

/// @notice Debt management type
///         - `INCREASE_DEBT` borrows additional funds from the pool, updates account's debt and cumulative interest index
///         - `DECREASE_DEBT` repays debt components (quota interest and fees -> base interest and fees -> debt principal)
///           and updates all corresponding state variables (base interest index, quota interest and fees, debt).
///           When repaying all the debt, ensures that account has no enabled quotas.
enum ManageDebtAction {
    INCREASE_DEBT,
    DECREASE_DEBT
}

/// @notice Collateral/debt calculation mode
///         - `GENERIC_PARAMS` returns generic data like account debt and cumulative indexes
///         - `DEBT_ONLY` is same as `GENERIC_PARAMS` but includes more detailed debt info, like accrued base/quota
///           interest and fees
///         - `FULL_COLLATERAL_CHECK_LAZY` checks whether account is sufficiently collateralized in a lazy fashion,
///           i.e. it stops iterating over collateral tokens once TWV reaches the desired target.
///           Since it may return underestimated TWV, it's only available for internal use.
///         - `DEBT_COLLATERAL` is same as `DEBT_ONLY` but also returns total value and total LT-weighted value of
///           account's tokens, this mode is used during account liquidation
///         - `DEBT_COLLATERAL_SAFE_PRICES` is same as `DEBT_COLLATERAL` but uses safe prices from price oracle
enum CollateralCalcTask {
    GENERIC_PARAMS,
    DEBT_ONLY,
    FULL_COLLATERAL_CHECK_LAZY,
    DEBT_COLLATERAL,
    DEBT_COLLATERAL_SAFE_PRICES
}

struct CreditAccountInfo {
    uint256 debt;
    uint256 cumulativeIndexLastUpdate;
    uint128 cumulativeQuotaInterest;
    uint128 quotaFees;
    uint256 enabledTokensMask;
    uint16 flags;
    uint64 lastDebtUpdate;
    address borrower;
}

struct CollateralDebtData {
    uint256 debt;
    uint256 cumulativeIndexNow;
    uint256 cumulativeIndexLastUpdate;
    uint128 cumulativeQuotaInterest;
    uint256 accruedInterest;
    uint256 accruedFees;
    uint256 totalDebtUSD;
    uint256 totalValue;
    uint256 totalValueUSD;
    uint256 twvUSD;
    uint256 enabledTokensMask;
    uint256 quotedTokensMask;
    address[] quotedTokens;
    address _poolQuotaKeeper;
}

struct CollateralTokenData {
    address token;
    uint16 ltInitial;
    uint16 ltFinal;
    uint40 timestampRampStart;
    uint24 rampDuration;
}

interface ICreditManagerV3Events {
    /// @notice Emitted when new credit configurator is set
    event SetCreditConfigurator(address indexed newConfigurator);
}

/// @title Credit manager V3 interface
interface ICreditManagerV3 is IVersion, ICreditManagerV3Events {
    function pool() external view returns (address);

    function underlying() external view returns (address);

    function creditFacade() external view returns (address);

    function creditConfigurator() external view returns (address);

    function accountFactory() external view returns (address);

    function name() external view returns (string memory);

    // ------------------ //
    // ACCOUNT MANAGEMENT //
    // ------------------ //

    function openCreditAccount(address onBehalfOf) external returns (address);

    function closeCreditAccount(address creditAccount) external;

    function liquidateCreditAccount(
        address creditAccount,
        CollateralDebtData calldata collateralDebtData,
        address to,
        bool isExpired
    ) external returns (uint256 remainingFunds, uint256 loss);

    function manageDebt(address creditAccount, uint256 amount, uint256 enabledTokensMask, ManageDebtAction action)
        external
        returns (uint256 newDebt, uint256, uint256);

    function addCollateral(address payer, address creditAccount, address token, uint256 amount)
        external
        returns (uint256);

    function withdrawCollateral(address creditAccount, address token, uint256 amount, address to)
        external
        returns (uint256);

    function externalCall(address creditAccount, address target, bytes calldata callData)
        external
        returns (bytes memory result);

    function approveToken(address creditAccount, address token, address spender, uint256 amount) external;

    // -------- //
    // ADAPTERS //
    // -------- //

    function adapterToContract(address adapter) external view returns (address targetContract);

    function contractToAdapter(address targetContract) external view returns (address adapter);

    function execute(bytes calldata data) external returns (bytes memory result);

    function approveCreditAccount(address token, uint256 amount) external;

    function setActiveCreditAccount(address creditAccount) external;

    function getActiveCreditAccountOrRevert() external view returns (address creditAccount);

    // ----------------- //
    // COLLATERAL CHECKS //
    // ----------------- //

    function priceOracle() external view returns (address);

    function fullCollateralCheck(
        address creditAccount,
        uint256 enabledTokensMask,
        uint256[] calldata collateralHints,
        uint16 minHealthFactor,
        bool useSafePrices
    ) external returns (uint256);

    function isLiquidatable(address creditAccount, uint16 minHealthFactor) external view returns (bool);

    function calcDebtAndCollateral(address creditAccount, CollateralCalcTask task)
        external
        view
        returns (CollateralDebtData memory cdd);

    // ------ //
    // QUOTAS //
    // ------ //

    function poolQuotaKeeper() external view returns (address);

    function quotedTokensMask() external view returns (uint256);

    function updateQuota(address creditAccount, address token, int96 quotaChange, uint96 minQuota, uint96 maxQuota)
        external
        returns (uint256 tokensToEnable, uint256 tokensToDisable);

    // --------------------- //
    // CREDIT MANAGER PARAMS //
    // --------------------- //

    function maxEnabledTokens() external view returns (uint8);

    function fees()
        external
        view
        returns (
            uint16 feeInterest,
            uint16 feeLiquidation,
            uint16 liquidationDiscount,
            uint16 feeLiquidationExpired,
            uint16 liquidationDiscountExpired
        );

    function collateralTokensCount() external view returns (uint8);

    function getTokenMaskOrRevert(address token) external view returns (uint256 tokenMask);

    function getTokenByMask(uint256 tokenMask) external view returns (address token);

    function liquidationThresholds(address token) external view returns (uint16 lt);

    function ltParams(address token)
        external
        view
        returns (uint16 ltInitial, uint16 ltFinal, uint40 timestampRampStart, uint24 rampDuration);

    function collateralTokenByMask(uint256 tokenMask)
        external
        view
        returns (address token, uint16 liquidationThreshold);

    // ------------ //
    // ACCOUNT INFO //
    // ------------ //

    function creditAccountInfo(address creditAccount)
        external
        view
        returns (
            uint256 debt,
            uint256 cumulativeIndexLastUpdate,
            uint128 cumulativeQuotaInterest,
            uint128 quotaFees,
            uint256 enabledTokensMask,
            uint16 flags,
            uint64 lastDebtUpdate,
            address borrower
        );

    function getBorrowerOrRevert(address creditAccount) external view returns (address borrower);

    function flagsOf(address creditAccount) external view returns (uint16);

    function setFlagFor(address creditAccount, uint16 flag, bool value) external;

    function enabledTokensMaskOf(address creditAccount) external view returns (uint256);

    function creditAccounts() external view returns (address[] memory);

    function creditAccounts(uint256 offset, uint256 limit) external view returns (address[] memory);

    function creditAccountsLen() external view returns (uint256);

    // ------------- //
    // CONFIGURATION //
    // ------------- //

    function addToken(address token) external;

    function setCollateralTokenData(
        address token,
        uint16 ltInitial,
        uint16 ltFinal,
        uint40 timestampRampStart,
        uint24 rampDuration
    ) external;

    function setFees(
        uint16 feeInterest,
        uint16 feeLiquidation,
        uint16 liquidationDiscount,
        uint16 feeLiquidationExpired,
        uint16 liquidationDiscountExpired
    ) external;

    function setContractAllowance(address adapter, address targetContract) external;

    function setCreditFacade(address creditFacade) external;

    function setPriceOracle(address priceOracle) external;

    function setCreditConfigurator(address creditConfigurator) external;
}

// ============================================================
// FILE: lib/@gearbox-protocol/core-v3/contracts/interfaces/IPoolV3.sol
// ============================================================

// SPDX-License-Identifier: MIT
// Gearbox Protocol. Generalized leverage for DeFi protocols
// (c) Gearbox Foundation, 2024.
pragma solidity ^0.8.17;
pragma abicoder v1;

import {IERC4626} from "@openzeppelin/contracts/interfaces/IERC4626.sol";
import {IERC20Permit} from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Permit.sol";
import {IACLTrait} from "./base/IACLTrait.sol";
import {IContractsRegisterTrait} from "./base/IContractsRegisterTrait.sol";
import {IVersion} from "./base/IVersion.sol";

interface IPoolV3Events {
    /// @notice Emitted when depositing liquidity with referral code
    event Refer(address indexed onBehalfOf, uint256 indexed referralCode, uint256 amount);

    /// @notice Emitted when credit account borrows funds from the pool
    event Borrow(address indexed creditManager, address indexed creditAccount, uint256 amount);

    /// @notice Emitted when credit account's debt is repaid to the pool
    event Repay(address indexed creditManager, uint256 borrowedAmount, uint256 profit, uint256 loss);

    /// @notice Emitted when incurred loss can't be fully covered by burning treasury's shares
    event IncurUncoveredLoss(address indexed creditManager, uint256 loss);

    /// @notice Emitted when new interest rate model contract is set
    event SetInterestRateModel(address indexed newInterestRateModel);

    /// @notice Emitted when new pool quota keeper contract is set
    event SetPoolQuotaKeeper(address indexed newPoolQuotaKeeper);

    /// @notice Emitted when new total debt limit is set
    event SetTotalDebtLimit(uint256 limit);

    /// @notice Emitted when new credit manager is connected to the pool
    event AddCreditManager(address indexed creditManager);

    /// @notice Emitted when new debt limit is set for a credit manager
    event SetCreditManagerDebtLimit(address indexed creditManager, uint256 newLimit);

    /// @notice Emitted when new withdrawal fee is set
    event SetWithdrawFee(uint256 fee);
}

/// @title Pool V3 interface
interface IPoolV3 is IVersion, IACLTrait, IContractsRegisterTrait, IPoolV3Events, IERC4626, IERC20Permit {
    function underlyingToken() external view returns (address);

    function treasury() external view returns (address);

    function withdrawFee() external view returns (uint16);

    function creditManagers() external view returns (address[] memory);

    function availableLiquidity() external view returns (uint256);

    function expectedLiquidity() external view returns (uint256);

    function expectedLiquidityLU() external view returns (uint256);

    // ---------------- //
    // ERC-4626 LENDING //
    // ---------------- //

    function depositWithReferral(uint256 assets, address receiver, uint256 referralCode)
        external
        returns (uint256 shares);

    function mintWithReferral(uint256 shares, address receiver, uint256 referralCode)
        external
        returns (uint256 assets);

    // --------- //
    // BORROWING //
    // --------- //

    function totalBorrowed() external view returns (uint256);

    function totalDebtLimit() external view returns (uint256);

    function creditManagerBorrowed(address creditManager) external view returns (uint256);

    function creditManagerDebtLimit(address creditManager) external view returns (uint256);

    function creditManagerBorrowable(address creditManager) external view returns (uint256 borrowable);

    function lendCreditAccount(uint256 borrowedAmount, address creditAccount) external;

    function repayCreditAccount(uint256 repaidAmount, uint256 profit, uint256 loss) external;

    // ------------- //
    // INTEREST RATE //
    // ------------- //

    function interestRateModel() external view returns (address);

    function baseInterestRate() external view returns (uint256);

    function supplyRate() external view returns (uint256);

    function baseInterestIndex() external view returns (uint256);

    function baseInterestIndexLU() external view returns (uint256);

    function lastBaseInterestUpdate() external view returns (uint40);

    // ------ //
    // QUOTAS //
    // ------ //

    function poolQuotaKeeper() external view returns (address);

    function quotaRevenue() external view returns (uint256);

    function lastQuotaRevenueUpdate() external view returns (uint40);

    function updateQuotaRevenue(int256 quotaRevenueDelta) external;

    function setQuotaRevenue(uint256 newQuotaRevenue) external;

    // ------------- //
    // CONFIGURATION //
    // ------------- //

    function setInterestRateModel(address newInterestRateModel) external;

    function setPoolQuotaKeeper(address newPoolQuotaKeeper) external;

    function setTotalDebtLimit(uint256 newLimit) external;

    function setCreditManagerDebtLimit(address creditManager, uint256 newLimit) external;

    function setWithdrawFee(uint256 newWithdrawFee) external;

    function pause() external;

    function unpause() external;
}

// ============================================================
// FILE: lib/@gearbox-protocol/permissionless/contracts/interfaces/base/IDeployerTrait.sol
// ============================================================

// SPDX-License-Identifier: MIT
// Gearbox Protocol. Generalized leverage for DeFi protocols
// (c) Gearbox Foundation, 2025.
pragma solidity ^0.8.23;

/// @title Deployer trait interface
interface IDeployerTrait {
    function addressProvider() external view returns (address);

    function bytecodeRepository() external view returns (address);
}

// ============================================================
// FILE: lib/@gearbox-protocol/permissionless/contracts/interfaces/base/IImmutableOwnableTrait.sol
// ============================================================

// SPDX-License-Identifier: MIT
// Gearbox Protocol. Generalized leverage for DeFi protocols
// (c) Gearbox Foundation, 2025.
pragma solidity ^0.8.23;

/// @title Immutable ownable trait interface
/// @notice Interface for contracts with immutable owner functionality
interface IImmutableOwnableTrait {
    error CallerIsNotOwnerException(address caller);

    /// @notice Returns the immutable owner address
    function owner() external view returns (address);
}

// ============================================================
// FILE: lib/@gearbox-protocol/permissionless/contracts/interfaces/IAddressProvider.sol
// ============================================================

// SPDX-License-Identifier: MIT
// Gearbox Protocol. Generalized leverage for DeFi protocols
// (c) Gearbox Foundation, 2025.
pragma solidity ^0.8.23;

import {IAddressProvider as IAddressProviderBase} from
    "@gearbox-protocol/core-v3/contracts/interfaces/base/IAddressProvider.sol";
import {IVersion} from "@gearbox-protocol/core-v3/contracts/interfaces/base/IVersion.sol";
import {IImmutableOwnableTrait} from "./base/IImmutableOwnableTrait.sol";
import {AddressProviderEntry} from "./Types.sol";

/// @title Address provider interface
interface IAddressProvider is IAddressProviderBase, IVersion, IImmutableOwnableTrait {
    // ------ //
    // EVENTS //
    // ------ //

    event SetAddress(bytes32 indexed key, uint256 indexed ver, address indexed value);

    // ------ //
    // ERRORS //
    // ------ //

    error AddressNotFoundException(bytes32 key, uint256 ver);
    error InvalidVersionException(bytes32 key, uint256 ver);
    error VersionNotFoundException(bytes32 key);
    error ZeroAddressException(bytes32 key);

    // ------- //
    // GETTERS //
    // ------- //

    function getAddress(bytes32 key, uint256 ver) external view returns (address);
    function getAddressOrRevert(bytes32 key, uint256 ver) external view override returns (address);
    function getKeys() external view returns (bytes32[] memory);
    function getVersions(bytes32 key) external view returns (uint256[] memory);
    function getAllEntries() external view returns (AddressProviderEntry[] memory);
    function getLatestVersion(bytes32 key) external view returns (uint256);
    function getLatestMinorVersion(bytes32 key, uint256 majorVersion) external view returns (uint256);
    function getLatestPatchVersion(bytes32 key, uint256 minorVersion) external view returns (uint256);

    // ------------- //
    // CONFIGURATION //
    // ------------- //

    function setAddress(bytes32 key, address value, bool saveVersion) external;
}

// ============================================================
// FILE: lib/@gearbox-protocol/permissionless/contracts/interfaces/IContractsRegister.sol
// ============================================================

// SPDX-License-Identifier: MIT
// Gearbox Protocol. Generalized leverage for DeFi protocols
// (c) Gearbox Foundation, 2025.
pragma solidity ^0.8.23;

import {IACLTrait} from "@gearbox-protocol/core-v3/contracts/interfaces/base/IACLTrait.sol";
import {IContractsRegister as IContractsRegisterBase} from
    "@gearbox-protocol/core-v3/contracts/interfaces/base/IContractsRegister.sol";
import {IVersion} from "@gearbox-protocol/core-v3/contracts/interfaces/base/IVersion.sol";

interface IContractsRegister is IContractsRegisterBase, IVersion, IACLTrait {
    // ------ //
    // EVENTS //
    // ------ //

    event RegisterMarket(address indexed pool, address indexed priceOracle, address indexed lossPolicy);
    event ShutdownMarket(address indexed pool);
    event RegisterCreditSuite(address indexed pool, address indexed creditManager);
    event ShutdownCreditSuite(address indexed pool, address indexed creditManager);
    event SetPriceOracle(address indexed pool, address indexed priceOracle);
    event SetLossPolicy(address indexed pool, address indexed lossPolicy);

    // ------ //
    // ERRORS //
    // ------ //

    error MarketNotRegisteredException(address pool);
    error MarketShutDownException(address pool);
    error MarketNotEmptyException(address pool);
    error CreditSuiteNotRegisteredException(address creditManager);
    error CreditSuiteShutDownException(address creditManager);

    // ------- //
    // MARKETS //
    // ------- //

    function getShutdownPools() external view returns (address[] memory);
    function getPriceOracle(address pool) external view returns (address);
    function getLossPolicy(address pool) external view returns (address);

    function registerMarket(address pool, address priceOracle, address lossPolicy) external;
    function shutdownMarket(address pool) external;
    function setPriceOracle(address pool, address priceOracle) external;
    function setLossPolicy(address pool, address lossPolicy) external;

    // ------------- //
    // CREDIT SUITES //
    // ------------- //

    function getCreditManagers(address pool) external view returns (address[] memory);
    function getShutdownCreditManagers() external view returns (address[] memory);
    function getShutdownCreditManagers(address pool) external view returns (address[] memory);

    function registerCreditSuite(address creditManager) external;
    function shutdownCreditSuite(address creditManager) external;
}

// ============================================================
// FILE: lib/@gearbox-protocol/permissionless/contracts/interfaces/IMarketConfigurator.sol
// ============================================================

// SPDX-License-Identifier: MIT
// Gearbox Protocol. Generalized leverage for DeFi protocols
// (c) Gearbox Foundation, 2025.
pragma solidity ^0.8.23;

import {IVersion} from "@gearbox-protocol/core-v3/contracts/interfaces/base/IVersion.sol";
import {IDeployerTrait} from "./base/IDeployerTrait.sol";
import {Call, DeployParams, MarketFactories} from "./Types.sol";

interface IMarketConfigurator is IVersion, IDeployerTrait {
    // ------ //
    // EVENTS //
    // ------ //

    event SetEmergencyAdmin(address indexed newEmergencyAdmin);

    event GrantRole(bytes32 indexed role, address indexed account);

    event RevokeRole(bytes32 indexed role, address indexed account);

    event EmergencyRevokeRole(bytes32 indexed role, address indexed account);

    event CreateMarket(
        address indexed pool,
        address priceOracle,
        address interestRateModel,
        address rateKeeper,
        address lossPolicy,
        MarketFactories factories
    );

    event ShutdownMarket(address indexed pool);

    event AddToken(address indexed pool, address indexed token);

    event ConfigurePool(address indexed pool, bytes data);

    event EmergencyConfigurePool(address indexed pool, bytes data);

    event CreateCreditSuite(address indexed creditManager, address factory);

    event ShutdownCreditSuite(address indexed creditManager);

    event ConfigureCreditSuite(address indexed creditManager, bytes data);

    event EmergencyConfigureCreditSuite(address indexed creditManager, bytes data);

    event UpdatePriceOracle(address indexed pool, address priceOracle);

    event ConfigurePriceOracle(address indexed pool, bytes data);

    event EmergencyConfigurePriceOracle(address indexed pool, bytes data);

    event UpdateInterestRateModel(address indexed pool, address interestRateModel);

    event ConfigureInterestRateModel(address indexed pool, bytes data);

    event EmergencyConfigureInterestRateModel(address indexed pool, bytes data);

    event UpdateRateKeeper(address indexed pool, address rateKeeper);

    event ConfigureRateKeeper(address indexed pool, bytes data);

    event EmergencyConfigureRateKeeper(address indexed pool, bytes data);

    event UpdateLossPolicy(address indexed pool, address lossPolicy);

    event ConfigureLossPolicy(address indexed pool, bytes data);

    event EmergencyConfigureLossPolicy(address indexed pool, bytes data);

    event AddPeripheryContract(bytes32 indexed domain, address indexed peripheryContract);

    event RemovePeripheryContract(bytes32 indexed domain, address indexed peripheryContract);

    event AuthorizeFactory(address indexed factory, address indexed suite, address indexed target);

    event UnauthorizeFactory(address indexed factory, address indexed suite, address indexed target);

    event UpgradePoolFactory(address indexed pool, address factory);

    event UpgradePriceOracleFactory(address indexed pool, address factory);

    event UpgradeInterestRateModelFactory(address indexed pool, address factory);

    event UpgradeRateKeeperFactory(address indexed pool, address factory);

    event UpgradeLossPolicyFactory(address indexed pool, address factory);

    event UpgradeCreditFactory(address indexed creditManager, address factory);

    event ExecuteHook(address indexed target, bytes callData);

    // ------ //
    // ERRORS //
    // ------ //

    error CallerIsNotAdminException(address caller);

    error CallerIsNotEmergencyAdminException(address caller);

    error CallerIsNotSelfException(address caller);

    error CreditSuiteNotRegisteredException(address creditManager);

    error IncorrectMinorVersionException(uint256 version);

    error IncorrectPeripheryContractException(address peripheryContract);

    error MarketNotRegisteredException(address pool);

    error UnauthorizedFactoryException(address factory, address target);

    // --------------- //
    // STATE VARIABLES //
    // --------------- //

    function admin() external view returns (address);
    function emergencyAdmin() external view returns (address);
    function curatorName() external view returns (string memory);

    function acl() external view returns (address);
    function contractsRegister() external view returns (address);
    function treasury() external view returns (address);

    // ---------------- //
    // ROLES MANAGEMENT //
    // ---------------- //

    function setEmergencyAdmin(address newEmergencyAdmin) external;

    function grantRole(bytes32 role, address account) external;

    function revokeRole(bytes32 role, address account) external;

    function emergencyRevokeRole(bytes32 role, address account) external;

    // ----------------- //
    // MARKET MANAGEMENT //
    // ----------------- //

    function previewCreateMarket(uint256 minorVersion, address underlying, string calldata name, string calldata symbol)
        external
        view
        returns (address pool);

    function createMarket(
        uint256 minorVersion,
        address underlying,
        string calldata name,
        string calldata symbol,
        DeployParams calldata interestRateModelParams,
        DeployParams calldata rateKeeperParams,
        DeployParams calldata lossPolicyParams,
        address underlyingPriceFeed
    ) external returns (address pool);

    function shutdownMarket(address pool) external;

    function addToken(address pool, address token, address priceFeed) external;

    function configurePool(address pool, bytes calldata data) external;

    function emergencyConfigurePool(address pool, bytes calldata data) external;

    // ----------------------- //
    // CREDIT SUITE MANAGEMENT //
    // ----------------------- //

    function previewCreateCreditSuite(uint256 minorVersion, address pool, bytes calldata encodedParams)
        external
        view
        returns (address creditManager);

    function previewCreateCreditSuite(
        uint256 marketMinorVersion,
        uint256 creditSuiteMinorVersion,
        address underlying,
        string calldata name,
        string calldata symbol,
        bytes calldata encodedParams
    ) external view returns (address creditManager);

    function createCreditSuite(uint256 minorVersion, address pool, bytes calldata encdodedParams)
        external
        returns (address creditManager);

    function shutdownCreditSuite(address creditManager) external;

    function configureCreditSuite(address creditManager, bytes calldata data) external;

    function emergencyConfigureCreditSuite(address creditManager, bytes calldata data) external;

    // ----------------------- //
    // PRICE ORACLE MANAGEMENT //
    // ----------------------- //

    function updatePriceOracle(address pool) external returns (address priceOracle);

    function configurePriceOracle(address pool, bytes calldata data) external;

    function emergencyConfigurePriceOracle(address pool, bytes calldata data) external;

    // -------------- //
    // IRM MANAGEMENT //
    // -------------- //

    function updateInterestRateModel(address pool, DeployParams calldata params) external returns (address irm);

    function configureInterestRateModel(address pool, bytes calldata data) external;

    function emergencyConfigureInterestRateModel(address pool, bytes calldata data) external;

    // ---------------------- //
    // RATE KEEPER MANAGEMENT //
    // ---------------------- //

    function updateRateKeeper(address pool, DeployParams calldata params) external returns (address rateKeeper);

    function configureRateKeeper(address pool, bytes calldata data) external;

    function emergencyConfigureRateKeeper(address pool, bytes calldata data) external;

    // -–-------------------- //
    // LOSS POLICY MANAGEMENT //
    // -–-------------------- //

    function updateLossPolicy(address pool, DeployParams calldata params) external returns (address lossPolicy);

    function configureLossPolicy(address pool, bytes calldata data) external;

    function emergencyConfigureLossPolicy(address pool, bytes calldata data) external;

    // --------- //
    // PERIPHERY //
    // --------- //

    function getPeripheryContracts(bytes32 domain) external view returns (address[] memory);

    function isPeripheryContract(bytes32 domain, address peripheryContract) external view returns (bool);

    function addPeripheryContract(address peripheryContract) external;

    function removePeripheryContract(address peripheryContract) external;

    // --------- //
    // FACTORIES //
    // --------- //

    function getMarketFactories(address pool) external view returns (MarketFactories memory);

    function getCreditFactory(address creditManager) external view returns (address);

    function getAuthorizedFactory(address target) external view returns (address);

    function getFactoryTargets(address factory, address suite) external view returns (address[] memory);

    function authorizeFactory(address factory, address suite, address target) external;

    function unauthorizeFactory(address factory, address suite, address target) external;

    function upgradePoolFactory(address pool) external;

    function upgradePriceOracleFactory(address pool) external;

    function upgradeInterestRateModelFactory(address pool) external;

    function upgradeRateKeeperFactory(address pool) external;

    function upgradeLossPolicyFactory(address pool) external;

    function upgradeCreditFactory(address creditManager) external;
}

// ============================================================
// FILE: lib/@gearbox-protocol/permissionless/contracts/interfaces/IMarketConfiguratorFactory.sol
// ============================================================

// SPDX-License-Identifier: MIT
// Gearbox Protocol. Generalized leverage for DeFi protocols
// (c) Gearbox Foundation, 2025.
pragma solidity ^0.8.23;

import {IVersion} from "@gearbox-protocol/core-v3/contracts/interfaces/base/IVersion.sol";
import {IDeployerTrait} from "./base/IDeployerTrait.sol";

/// @title Market configurator factory interface
interface IMarketConfiguratorFactory is IVersion, IDeployerTrait {
    // ------ //
    // EVENTS //
    // ------ //

    event CreateMarketConfigurator(address indexed marketConfigurator, string name);
    event ShutdownMarketConfigurator(address indexed marketConfigurator);

    // ------ //
    // ERRORS //
    // ------ //

    error CallerIsNotCrossChainGovernanceException(address caller);
    error CallerIsNotMarketConfiguratorAdminException(address caller);
    error CantShutdownMarketConfiguratorException(address marketConfigurator);
    error MarketConfiguratorIsAlreadyAddedException(address marketConfigurator);
    error MarketConfiguratorIsAlreadyShutdownException(address marketConfigruator);
    error MarketConfiguratorIsNotRegisteredException(address marketConfigurator);

    // ------- //
    // GETTERS //
    // ------- //

    function isMarketConfigurator(address account) external view returns (bool);
    function getMarketConfigurators() external view returns (address[] memory);
    function getMarketConfigurator(uint256 index) external view returns (address);
    function getNumMarketConfigurators() external view returns (uint256);
    function getShutdownMarketConfigurators() external view returns (address[] memory);

    // ------------- //
    // CONFIGURATION //
    // ------------- //

    function createMarketConfigurator(
        address emergencyAdmin,
        address adminFeeTreasury,
        string calldata curatorName,
        bool deployGovernor
    ) external returns (address marketConfigurator);
    function shutdownMarketConfigurator(address marketConfigurator) external;
    function addMarketConfigurator(address marketConfigurator) external;
}

// ============================================================
// FILE: lib/@gearbox-protocol/permissionless/contracts/interfaces/Types.sol
// ============================================================

// SPDX-License-Identifier: MIT
// Gearbox Protocol. Generalized leverage for DeFi protocols
// (c) Gearbox Foundation, 2025.
pragma solidity ^0.8.23;

struct AddressProviderEntry {
    bytes32 key;
    uint256 ver;
    address value;
}

struct AuditReport {
    address auditor;
    string reportUrl;
    bytes signature;
}

struct Bytecode {
    bytes32 contractType;
    uint256 version;
    bytes initCode;
    address author;
    string source;
    bytes authorSignature;
}

struct BytecodePointer {
    bytes32 contractType;
    uint256 version;
    address[] initCodePointers;
    address author;
    string source;
    bytes authorSignature;
}

struct Call {
    address target;
    bytes callData;
}

struct ConnectedPriceFeed {
    address token;
    address[] priceFeeds;
}

struct CrossChainCall {
    uint256 chainId; // 0 means to be executed on all chains
    address target;
    bytes callData;
}

struct DeployParams {
    bytes32 postfix;
    bytes32 salt;
    bytes constructorParams;
}

struct DeployResult {
    address newContract;
    Call[] onInstallOps;
}

struct MarketFactories {
    address poolFactory;
    address priceOracleFactory;
    address interestRateModelFactory;
    address rateKeeperFactory;
    address lossPolicyFactory;
}

struct PriceFeedInfo {
    string name;
    uint32 stalenessPeriod;
    bytes32 priceFeedType;
    uint256 version;
}

struct SignedBatch {
    string name;
    bytes32 prevHash;
    CrossChainCall[] calls;
    bytes[] signatures;
}

struct SignedRecoveryModeMessage {
    uint256 chainId;
    bytes32 startingBatchHash;
    bytes[] signatures;
}

struct Split {
    bool initialized;
    address[] receivers;
    uint16[] proportions;
}

struct TwoAdminProposal {
    bytes callData;
    bool confirmedByAdmin;
    bool confirmedByTreasuryProxy;
}

// ============================================================
// FILE: lib/@gearbox-protocol/permissionless/contracts/libraries/ContractLiterals.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1
// Gearbox Protocol. Generalized leverage for DeFi protocols
// (c) Gearbox Foundation, 2025.
pragma solidity ^0.8.23;

uint256 constant NO_VERSION_CONTROL = 0;

// Contract types and prefixes
bytes32 constant AP_ACCOUNT_FACTORY_DEFAULT = "ACCOUNT_FACTORY::DEFAULT";
bytes32 constant AP_ACL = "ACL";
bytes32 constant AP_ADDRESS_PROVIDER = "ADDRESS_PROVIDER";
bytes32 constant AP_BOT_LIST = "BOT_LIST";
bytes32 constant AP_BYTECODE_REPOSITORY = "BYTECODE_REPOSITORY";
bytes32 constant AP_CONTRACTS_REGISTER = "CONTRACTS_REGISTER";
bytes32 constant AP_CREDIT_CONFIGURATOR = "CREDIT_CONFIGURATOR";
bytes32 constant AP_CREDIT_FACADE = "CREDIT_FACADE";
bytes32 constant AP_CREDIT_FACTORY = "CREDIT_FACTORY";
bytes32 constant AP_CREDIT_MANAGER = "CREDIT_MANAGER";
bytes32 constant AP_CROSS_CHAIN_GOVERNANCE = "CROSS_CHAIN_GOVERNANCE";
bytes32 constant AP_CROSS_CHAIN_GOVERNANCE_PROXY = "CROSS_CHAIN_GOVERNANCE_PROXY";
bytes32 constant AP_CROSS_CHAIN_MULTISIG = "CROSS_CHAIN_MULTISIG";
bytes32 constant AP_GEAR_STAKING = "GEAR_STAKING";
bytes32 constant AP_GEAR_TOKEN = "GLOBAL::GEAR_TOKEN";
bytes32 constant AP_GOVERNOR = "GOVERNOR";
bytes32 constant AP_INSTANCE_MANAGER = "INSTANCE_MANAGER";
bytes32 constant AP_INSTANCE_MANAGER_PROXY = "INSTANCE_MANAGER_PROXY";
bytes32 constant AP_INTEREST_RATE_MODEL_DEFAULT = "IRM::DEFAULT";
bytes32 constant AP_INTEREST_RATE_MODEL_FACTORY = "INTEREST_RATE_MODEL_FACTORY";
bytes32 constant AP_INTEREST_RATE_MODEL_LINEAR = "IRM::LINEAR";
bytes32 constant AP_LOSS_POLICY_ALIASED = "LOSS_POLICY::ALIASED";
bytes32 constant AP_LOSS_POLICY_DEFAULT = "LOSS_POLICY::DEFAULT";
bytes32 constant AP_LOSS_POLICY_FACTORY = "LOSS_POLICY_FACTORY";
bytes32 constant AP_MARKET_CONFIGURATOR = "MARKET_CONFIGURATOR";
bytes32 constant AP_MARKET_CONFIGURATOR_FACTORY = "MARKET_CONFIGURATOR_FACTORY";
bytes32 constant AP_MARKET_CONFIGURATOR_LEGACY = "MARKET_CONFIGURATOR::LEGACY";
bytes32 constant AP_POOL = "POOL";
bytes32 constant AP_POOL_FACTORY = "POOL_FACTORY";
bytes32 constant AP_POOL_QUOTA_KEEPER = "POOL_QUOTA_KEEPER";
bytes32 constant AP_PRICE_FEED_STORE = "PRICE_FEED_STORE";
bytes32 constant AP_PRICE_ORACLE = "PRICE_ORACLE";
bytes32 constant AP_PRICE_ORACLE_FACTORY = "PRICE_ORACLE_FACTORY";
bytes32 constant AP_RATE_KEEPER_FACTORY = "RATE_KEEPER_FACTORY";
bytes32 constant AP_RATE_KEEPER_GAUGE = "RATE_KEEPER::GAUGE";
bytes32 constant AP_RATE_KEEPER_TUMBLER = "RATE_KEEPER::TUMBLER";
bytes32 constant AP_TREASURY = "TREASURY";
bytes32 constant AP_TREASURY_PROXY = "TREASURY_PROXY";
bytes32 constant AP_TREASURY_SPLITTER = "TREASURY_SPLITTER";
bytes32 constant AP_WETH_TOKEN = "WETH_TOKEN";
bytes32 constant AP_ZERO_PRICE_FEED = "PRICE_FEED::ZERO";

// Common domains
bytes32 constant DOMAIN_ACCOUNT_FACTORY = "ACCOUNT_FACTORY";
bytes32 constant DOMAIN_ADAPTER = "ADAPTER";
bytes32 constant DOMAIN_BOT = "BOT";
bytes32 constant DOMAIN_CREDIT_MANAGER = "CREDIT_MANAGER";
bytes32 constant DOMAIN_DEGEN_NFT = "DEGEN_NFT";
bytes32 constant DOMAIN_IRM = "IRM";
bytes32 constant DOMAIN_LOSS_POLICY = "LOSS_POLICY";
bytes32 constant DOMAIN_POOL = "POOL";
bytes32 constant DOMAIN_PRICE_FEED = "PRICE_FEED";
bytes32 constant DOMAIN_RATE_KEEPER = "RATE_KEEPER";
bytes32 constant DOMAIN_ZAPPER = "ZAPPER";

// Roles
bytes32 constant ROLE_EMERGENCY_LIQUIDATOR = "EMERGENCY_LIQUIDATOR";
bytes32 constant ROLE_PAUSABLE_ADMIN = "PAUSABLE_ADMIN";
bytes32 constant ROLE_UNPAUSABLE_ADMIN = "UNPAUSABLE_ADMIN";

// ============================================================
// FILE: lib/@openzeppelin/contracts/interfaces/IERC4626.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (interfaces/IERC4626.sol)

pragma solidity ^0.8.0;

import "../token/ERC20/IERC20.sol";
import "../token/ERC20/extensions/IERC20Metadata.sol";

/**
 * @dev Interface of the ERC4626 "Tokenized Vault Standard", as defined in
 * https://eips.ethereum.org/EIPS/eip-4626[ERC-4626].
 *
 * _Available since v4.7._
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
     * @dev Allows an on-chain or off-chain user to simulate the effects of their redeemption at the current block,
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
// FILE: lib/@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts v4.4.1 (token/ERC20/extensions/IERC20Metadata.sol)

pragma solidity ^0.8.0;

import "../IERC20.sol";

/**
 * @dev Interface for the optional metadata functions from the ERC20 standard.
 *
 * _Available since v4.1._
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
// FILE: lib/@openzeppelin/contracts/token/ERC20/extensions/IERC20Permit.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.4) (token/ERC20/extensions/IERC20Permit.sol)

pragma solidity ^0.8.0;

/**
 * @dev Interface of the ERC20 Permit extension allowing approvals to be made via signatures, as defined in
 * https://eips.ethereum.org/EIPS/eip-2612[EIP-2612].
 *
 * Adds the {permit} method, which can be used to change an account's ERC20 allowance (see {IERC20-allowance}) by
 * presenting a message signed by the account. By not relying on {IERC20-approve}, the token holder account doesn't
 * need to send a transaction, and thus is not required to hold Ether at all.
 *
 * ==== Security Considerations
 *
 * There are two important considerations concerning the use of `permit`. The first is that a valid permit signature
 * expresses an allowance, and it should not be assumed to convey additional meaning. In particular, it should not be
 * considered as an intention to spend the allowance in any specific way. The second is that because permits have
 * built-in replay protection and can be submitted by anyone, they can be frontrun. A protocol that uses permits should
 * take this into consideration and allow a `permit` call to fail. Combining these two aspects, a pattern that may be
 * generally recommended is:
 *
 * ```solidity
 * function doThingWithPermit(..., uint256 value, uint256 deadline, uint8 v, bytes32 r, bytes32 s) public {
 *     try token.permit(msg.sender, address(this), value, deadline, v, r, s) {} catch {}
 *     doThing(..., value);
 * }
 *
 * function doThing(..., uint256 value) public {
 *     token.safeTransferFrom(msg.sender, address(this), value);
 *     ...
 * }
 * ```
 *
 * Observe that: 1) `msg.sender` is used as the owner, leaving no ambiguity as to the signer intent, and 2) the use of
 * `try/catch` allows the permit to fail and makes the code tolerant to frontrunning. (See also
 * {SafeERC20-safeTransferFrom}).
 *
 * Additionally, note that smart contract wallets (such as Argent or Safe) are not able to produce permit signatures, so
 * contracts should have entry points that don't rely on permit.
 */
interface IERC20Permit {
    /**
     * @dev Sets `value` as the allowance of `spender` over ``owner``'s tokens,
     * given ``owner``'s signed approval.
     *
     * IMPORTANT: The same issues {IERC20-approve} has related to transaction
     * ordering also apply here.
     *
     * Emits an {Approval} event.
     *
     * Requirements:
     *
     * - `spender` cannot be the zero address.
     * - `deadline` must be a timestamp in the future.
     * - `v`, `r` and `s` must be a valid `secp256k1` signature from `owner`
     * over the EIP712-formatted function arguments.
     * - the signature must use ``owner``'s current nonce (see {nonces}).
     *
     * For more information on the signature format, see the
     * https://eips.ethereum.org/EIPS/eip-2612#specification[relevant EIP
     * section].
     *
     * CAUTION: See Security Considerations above.
     */
    function permit(
        address owner,
        address spender,
        uint256 value,
        uint256 deadline,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) external;

    /**
     * @dev Returns the current nonce for `owner`. This value must be
     * included whenever a signature is generated for {permit}.
     *
     * Every successful call to {permit} increases ``owner``'s nonce by one. This
     * prevents a signature from being used multiple times.
     */
    function nonces(address owner) external view returns (uint256);

    /**
     * @dev Returns the domain separator used in the encoding of the signature for {permit}, as defined by {EIP712}.
     */
    // solhint-disable-next-line func-name-mixedcase
    function DOMAIN_SEPARATOR() external view returns (bytes32);
}

// ============================================================
// FILE: lib/@openzeppelin/contracts/token/ERC20/IERC20.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (token/ERC20/IERC20.sol)

pragma solidity ^0.8.0;

/**
 * @dev Interface of the ERC20 standard as defined in the EIP.
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
     * @dev Returns the amount of tokens in existence.
     */
    function totalSupply() external view returns (uint256);

    /**
     * @dev Returns the amount of tokens owned by `account`.
     */
    function balanceOf(address account) external view returns (uint256);

    /**
     * @dev Moves `amount` tokens from the caller's account to `to`.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    function transfer(address to, uint256 amount) external returns (bool);

    /**
     * @dev Returns the remaining number of tokens that `spender` will be
     * allowed to spend on behalf of `owner` through {transferFrom}. This is
     * zero by default.
     *
     * This value changes when {approve} or {transferFrom} are called.
     */
    function allowance(address owner, address spender) external view returns (uint256);

    /**
     * @dev Sets `amount` as the allowance of `spender` over the caller's tokens.
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
    function approve(address spender, uint256 amount) external returns (bool);

    /**
     * @dev Moves `amount` tokens from `from` to `to` using the
     * allowance mechanism. `amount` is then deducted from the caller's
     * allowance.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    function transferFrom(address from, address to, uint256 amount) external returns (bool);
}

// ============================================================
// FILE: lib/@openzeppelin/contracts/utils/math/Math.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (utils/math/Math.sol)

pragma solidity ^0.8.0;

/**
 * @dev Standard math utilities missing in the Solidity language.
 */
library Math {
    enum Rounding {
        Down, // Toward negative infinity
        Up, // Toward infinity
        Zero // Toward zero
    }

    /**
     * @dev Returns the largest of two numbers.
     */
    function max(uint256 a, uint256 b) internal pure returns (uint256) {
        return a > b ? a : b;
    }

    /**
     * @dev Returns the smallest of two numbers.
     */
    function min(uint256 a, uint256 b) internal pure returns (uint256) {
        return a < b ? a : b;
    }

    /**
     * @dev Returns the average of two numbers. The result is rounded towards
     * zero.
     */
    function average(uint256 a, uint256 b) internal pure returns (uint256) {
        // (a + b) / 2 can overflow.
        return (a & b) + (a ^ b) / 2;
    }

    /**
     * @dev Returns the ceiling of the division of two numbers.
     *
     * This differs from standard division with `/` in that it rounds up instead
     * of rounding down.
     */
    function ceilDiv(uint256 a, uint256 b) internal pure returns (uint256) {
        // (a + b - 1) / b can overflow on addition, so we distribute.
        return a == 0 ? 0 : (a - 1) / b + 1;
    }

    /**
     * @notice Calculates floor(x * y / denominator) with full precision. Throws if result overflows a uint256 or denominator == 0
     * @dev Original credit to Remco Bloemen under MIT license (https://xn--2-umb.com/21/muldiv)
     * with further edits by Uniswap Labs also under MIT license.
     */
    function mulDiv(uint256 x, uint256 y, uint256 denominator) internal pure returns (uint256 result) {
        unchecked {
            // 512-bit multiply [prod1 prod0] = x * y. Compute the product mod 2^256 and mod 2^256 - 1, then use
            // use the Chinese Remainder Theorem to reconstruct the 512 bit result. The result is stored in two 256
            // variables such that product = prod1 * 2^256 + prod0.
            uint256 prod0; // Least significant 256 bits of the product
            uint256 prod1; // Most significant 256 bits of the product
            assembly {
                let mm := mulmod(x, y, not(0))
                prod0 := mul(x, y)
                prod1 := sub(sub(mm, prod0), lt(mm, prod0))
            }

            // Handle non-overflow cases, 256 by 256 division.
            if (prod1 == 0) {
                // Solidity will revert if denominator == 0, unlike the div opcode on its own.
                // The surrounding unchecked block does not change this fact.
                // See https://docs.soliditylang.org/en/latest/control-structures.html#checked-or-unchecked-arithmetic.
                return prod0 / denominator;
            }

            // Make sure the result is less than 2^256. Also prevents denominator == 0.
            require(denominator > prod1, "Math: mulDiv overflow");

            ///////////////////////////////////////////////
            // 512 by 256 division.
            ///////////////////////////////////////////////

            // Make division exact by subtracting the remainder from [prod1 prod0].
            uint256 remainder;
            assembly {
                // Compute remainder using mulmod.
                remainder := mulmod(x, y, denominator)

                // Subtract 256 bit number from 512 bit number.
                prod1 := sub(prod1, gt(remainder, prod0))
                prod0 := sub(prod0, remainder)
            }

            // Factor powers of two out of denominator and compute largest power of two divisor of denominator. Always >= 1.
            // See https://cs.stackexchange.com/q/138556/92363.

            // Does not overflow because the denominator cannot be zero at this stage in the function.
            uint256 twos = denominator & (~denominator + 1);
            assembly {
                // Divide denominator by twos.
                denominator := div(denominator, twos)

                // Divide [prod1 prod0] by twos.
                prod0 := div(prod0, twos)

                // Flip twos such that it is 2^256 / twos. If twos is zero, then it becomes one.
                twos := add(div(sub(0, twos), twos), 1)
            }

            // Shift in bits from prod1 into prod0.
            prod0 |= prod1 * twos;

            // Invert denominator mod 2^256. Now that denominator is an odd number, it has an inverse modulo 2^256 such
            // that denominator * inv = 1 mod 2^256. Compute the inverse by starting with a seed that is correct for
            // four bits. That is, denominator * inv = 1 mod 2^4.
            uint256 inverse = (3 * denominator) ^ 2;

            // Use the Newton-Raphson iteration to improve the precision. Thanks to Hensel's lifting lemma, this also works
            // in modular arithmetic, doubling the correct bits in each step.
            inverse *= 2 - denominator * inverse; // inverse mod 2^8
            inverse *= 2 - denominator * inverse; // inverse mod 2^16
            inverse *= 2 - denominator * inverse; // inverse mod 2^32
            inverse *= 2 - denominator * inverse; // inverse mod 2^64
            inverse *= 2 - denominator * inverse; // inverse mod 2^128
            inverse *= 2 - denominator * inverse; // inverse mod 2^256

            // Because the division is now exact we can divide by multiplying with the modular inverse of denominator.
            // This will give us the correct result modulo 2^256. Since the preconditions guarantee that the outcome is
            // less than 2^256, this is the final result. We don't need to compute the high bits of the result and prod1
            // is no longer required.
            result = prod0 * inverse;
            return result;
        }
    }

    /**
     * @notice Calculates x * y / denominator with full precision, following the selected rounding direction.
     */
    function mulDiv(uint256 x, uint256 y, uint256 denominator, Rounding rounding) internal pure returns (uint256) {
        uint256 result = mulDiv(x, y, denominator);
        if (rounding == Rounding.Up && mulmod(x, y, denominator) > 0) {
            result += 1;
        }
        return result;
    }

    /**
     * @dev Returns the square root of a number. If the number is not a perfect square, the value is rounded down.
     *
     * Inspired by Henry S. Warren, Jr.'s "Hacker's Delight" (Chapter 11).
     */
    function sqrt(uint256 a) internal pure returns (uint256) {
        if (a == 0) {
            return 0;
        }

        // For our first guess, we get the biggest power of 2 which is smaller than the square root of the target.
        //
        // We know that the "msb" (most significant bit) of our target number `a` is a power of 2 such that we have
        // `msb(a) <= a < 2*msb(a)`. This value can be written `msb(a)=2**k` with `k=log2(a)`.
        //
        // This can be rewritten `2**log2(a) <= a < 2**(log2(a) + 1)`
        // → `sqrt(2**k) <= sqrt(a) < sqrt(2**(k+1))`
        // → `2**(k/2) <= sqrt(a) < 2**((k+1)/2) <= 2**(k/2 + 1)`
        //
        // Consequently, `2**(log2(a) / 2)` is a good first approximation of `sqrt(a)` with at least 1 correct bit.
        uint256 result = 1 << (log2(a) >> 1);

        // At this point `result` is an estimation with one bit of precision. We know the true value is a uint128,
        // since it is the square root of a uint256. Newton's method converges quadratically (precision doubles at
        // every iteration). We thus need at most 7 iteration to turn our partial result with one bit of precision
        // into the expected uint128 result.
        unchecked {
            result = (result + a / result) >> 1;
            result = (result + a / result) >> 1;
            result = (result + a / result) >> 1;
            result = (result + a / result) >> 1;
            result = (result + a / result) >> 1;
            result = (result + a / result) >> 1;
            result = (result + a / result) >> 1;
            return min(result, a / result);
        }
    }

    /**
     * @notice Calculates sqrt(a), following the selected rounding direction.
     */
    function sqrt(uint256 a, Rounding rounding) internal pure returns (uint256) {
        unchecked {
            uint256 result = sqrt(a);
            return result + (rounding == Rounding.Up && result * result < a ? 1 : 0);
        }
    }

    /**
     * @dev Return the log in base 2, rounded down, of a positive value.
     * Returns 0 if given 0.
     */
    function log2(uint256 value) internal pure returns (uint256) {
        uint256 result = 0;
        unchecked {
            if (value >> 128 > 0) {
                value >>= 128;
                result += 128;
            }
            if (value >> 64 > 0) {
                value >>= 64;
                result += 64;
            }
            if (value >> 32 > 0) {
                value >>= 32;
                result += 32;
            }
            if (value >> 16 > 0) {
                value >>= 16;
                result += 16;
            }
            if (value >> 8 > 0) {
                value >>= 8;
                result += 8;
            }
            if (value >> 4 > 0) {
                value >>= 4;
                result += 4;
            }
            if (value >> 2 > 0) {
                value >>= 2;
                result += 2;
            }
            if (value >> 1 > 0) {
                result += 1;
            }
        }
        return result;
    }

    /**
     * @dev Return the log in base 2, following the selected rounding direction, of a positive value.
     * Returns 0 if given 0.
     */
    function log2(uint256 value, Rounding rounding) internal pure returns (uint256) {
        unchecked {
            uint256 result = log2(value);
            return result + (rounding == Rounding.Up && 1 << result < value ? 1 : 0);
        }
    }

    /**
     * @dev Return the log in base 10, rounded down, of a positive value.
     * Returns 0 if given 0.
     */
    function log10(uint256 value) internal pure returns (uint256) {
        uint256 result = 0;
        unchecked {
            if (value >= 10 ** 64) {
                value /= 10 ** 64;
                result += 64;
            }
            if (value >= 10 ** 32) {
                value /= 10 ** 32;
                result += 32;
            }
            if (value >= 10 ** 16) {
                value /= 10 ** 16;
                result += 16;
            }
            if (value >= 10 ** 8) {
                value /= 10 ** 8;
                result += 8;
            }
            if (value >= 10 ** 4) {
                value /= 10 ** 4;
                result += 4;
            }
            if (value >= 10 ** 2) {
                value /= 10 ** 2;
                result += 2;
            }
            if (value >= 10 ** 1) {
                result += 1;
            }
        }
        return result;
    }

    /**
     * @dev Return the log in base 10, following the selected rounding direction, of a positive value.
     * Returns 0 if given 0.
     */
    function log10(uint256 value, Rounding rounding) internal pure returns (uint256) {
        unchecked {
            uint256 result = log10(value);
            return result + (rounding == Rounding.Up && 10 ** result < value ? 1 : 0);
        }
    }

    /**
     * @dev Return the log in base 256, rounded down, of a positive value.
     * Returns 0 if given 0.
     *
     * Adding one to the result gives the number of pairs of hex symbols needed to represent `value` as a hex string.
     */
    function log256(uint256 value) internal pure returns (uint256) {
        uint256 result = 0;
        unchecked {
            if (value >> 128 > 0) {
                value >>= 128;
                result += 16;
            }
            if (value >> 64 > 0) {
                value >>= 64;
                result += 8;
            }
            if (value >> 32 > 0) {
                value >>= 32;
                result += 4;
            }
            if (value >> 16 > 0) {
                value >>= 16;
                result += 2;
            }
            if (value >> 8 > 0) {
                result += 1;
            }
        }
        return result;
    }

    /**
     * @dev Return the log in base 256, following the selected rounding direction, of a positive value.
     * Returns 0 if given 0.
     */
    function log256(uint256 value, Rounding rounding) internal pure returns (uint256) {
        unchecked {
            uint256 result = log256(value);
            return result + (rounding == Rounding.Up && 1 << (result << 3) < value ? 1 : 0);
        }
    }
}
