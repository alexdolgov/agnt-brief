pragma solidity 0.7.4;
pragma experimental ABIEncoderV2;


library Address {
    
    function isContract(address account) internal view returns (bool) {
        
        
        

        uint256 size;
        
        assembly { size := extcodesize(account) }
        return size > 0;
    }

    
    function sendValue(address payable recipient, uint256 amount) internal {
        require(address(this).balance >= amount, "Address: insufficient balance");

        
        (bool success, ) = recipient.call{ value: amount }("");
        require(success, "Address: unable to send value, recipient may have reverted");
    }

    
    function functionCall(address target, bytes memory data) internal returns (bytes memory) {
      return functionCall(target, data, "Address: low-level call failed");
    }

    
    function functionCall(address target, bytes memory data, string memory errorMessage) internal returns (bytes memory) {
        return functionCallWithValue(target, data, 0, errorMessage);
    }

    
    function functionCallWithValue(address target, bytes memory data, uint256 value) internal returns (bytes memory) {
        return functionCallWithValue(target, data, value, "Address: low-level call with value failed");
    }

    
    function functionCallWithValue(address target, bytes memory data, uint256 value, string memory errorMessage) internal returns (bytes memory) {
        require(address(this).balance >= value, "Address: insufficient balance for call");
        require(isContract(target), "Address: call to non-contract");

        
        (bool success, bytes memory returndata) = target.call{ value: value }(data);
        return _verifyCallResult(success, returndata, errorMessage);
    }

    
    function functionStaticCall(address target, bytes memory data) internal view returns (bytes memory) {
        return functionStaticCall(target, data, "Address: low-level static call failed");
    }

    
    function functionStaticCall(address target, bytes memory data, string memory errorMessage) internal view returns (bytes memory) {
        require(isContract(target), "Address: static call to non-contract");

        
        (bool success, bytes memory returndata) = target.staticcall(data);
        return _verifyCallResult(success, returndata, errorMessage);
    }

    
    function functionDelegateCall(address target, bytes memory data) internal returns (bytes memory) {
        return functionDelegateCall(target, data, "Address: low-level delegate call failed");
    }

    
    function functionDelegateCall(address target, bytes memory data, string memory errorMessage) internal returns (bytes memory) {
        require(isContract(target), "Address: delegate call to non-contract");

        
        (bool success, bytes memory returndata) = target.delegatecall(data);
        return _verifyCallResult(success, returndata, errorMessage);
    }

    function _verifyCallResult(bool success, bytes memory returndata, string memory errorMessage) private pure returns(bytes memory) {
        if (success) {
            return returndata;
        } else {
            
            if (returndata.length > 0) {
                

                
                assembly {
                    let returndata_size := mload(returndata)
                    revert(add(32, returndata), returndata_size)
                }
            } else {
                revert(errorMessage);
            }
        }
    }
}

library EnumerableSetUpgradeable {
    
    
    
    
    
    
    
    

    struct Set {
        
        bytes32[] _values;

        
        
        mapping (bytes32 => uint256) _indexes;
    }

    
    function _add(Set storage set, bytes32 value) private returns (bool) {
        if (!_contains(set, value)) {
            set._values.push(value);
            
            
            set._indexes[value] = set._values.length;
            return true;
        } else {
            return false;
        }
    }

    
    function _remove(Set storage set, bytes32 value) private returns (bool) {
        
        uint256 valueIndex = set._indexes[value];

        if (valueIndex != 0) { 
            
            
            

            uint256 toDeleteIndex = valueIndex - 1;
            uint256 lastIndex = set._values.length - 1;

            
            

            bytes32 lastvalue = set._values[lastIndex];

            
            set._values[toDeleteIndex] = lastvalue;
            
            set._indexes[lastvalue] = toDeleteIndex + 1; 

            
            set._values.pop();

            
            delete set._indexes[value];

            return true;
        } else {
            return false;
        }
    }

    
    function _contains(Set storage set, bytes32 value) private view returns (bool) {
        return set._indexes[value] != 0;
    }

    
    function _length(Set storage set) private view returns (uint256) {
        return set._values.length;
    }

   
    function _at(Set storage set, uint256 index) private view returns (bytes32) {
        require(set._values.length > index, "EnumerableSet: index out of bounds");
        return set._values[index];
    }

    

    struct Bytes32Set {
        Set _inner;
    }

    
    function add(Bytes32Set storage set, bytes32 value) internal returns (bool) {
        return _add(set._inner, value);
    }

    
    function remove(Bytes32Set storage set, bytes32 value) internal returns (bool) {
        return _remove(set._inner, value);
    }

    
    function contains(Bytes32Set storage set, bytes32 value) internal view returns (bool) {
        return _contains(set._inner, value);
    }

    
    function length(Bytes32Set storage set) internal view returns (uint256) {
        return _length(set._inner);
    }

   
    function at(Bytes32Set storage set, uint256 index) internal view returns (bytes32) {
        return _at(set._inner, index);
    }

    

    struct AddressSet {
        Set _inner;
    }

    
    function add(AddressSet storage set, address value) internal returns (bool) {
        return _add(set._inner, bytes32(uint256(uint160(value))));
    }

    
    function remove(AddressSet storage set, address value) internal returns (bool) {
        return _remove(set._inner, bytes32(uint256(uint160(value))));
    }

    
    function contains(AddressSet storage set, address value) internal view returns (bool) {
        return _contains(set._inner, bytes32(uint256(uint160(value))));
    }

    
    function length(AddressSet storage set) internal view returns (uint256) {
        return _length(set._inner);
    }

   
    function at(AddressSet storage set, uint256 index) internal view returns (address) {
        return address(uint160(uint256(_at(set._inner, index))));
    }


    

    struct UintSet {
        Set _inner;
    }

    
    function add(UintSet storage set, uint256 value) internal returns (bool) {
        return _add(set._inner, bytes32(value));
    }

    
    function remove(UintSet storage set, uint256 value) internal returns (bool) {
        return _remove(set._inner, bytes32(value));
    }

    
    function contains(UintSet storage set, uint256 value) internal view returns (bool) {
        return _contains(set._inner, bytes32(value));
    }

    
    function length(UintSet storage set) internal view returns (uint256) {
        return _length(set._inner);
    }

   
    function at(UintSet storage set, uint256 index) internal view returns (uint256) {
        return uint256(_at(set._inner, index));
    }
}

enum PerpetualState {
    INVALID,
    INITIALIZING,
    NORMAL,
    EMERGENCY,
    CLEARED
}

enum OrderType {
    LIMIT,
    MARKET,
    STOP
}

struct Option {
    int256 value;
    int256 minValue;
    int256 maxValue;
}

struct OraclePriceData {
    int256 price;
    uint256 time;
}

struct MarginAccount {
    int256 cash;
    int256 position;
    int256 targetLeverage;
}

struct Order {
    address trader;
    address broker;
    address relayer;
    address referrer;
    address liquidityPool;
    int256 minTradeAmount;
    int256 amount;
    int256 limitPrice;
    int256 triggerPrice;
    uint256 chainID;
    uint64 expiredAt;
    uint32 perpetualIndex;
    uint32 brokerFeeLimit;
    uint32 flags;
    uint32 salt;
}

struct LiquidityPoolStorage {
    bool isRunning;
    bool isFastCreationEnabled;
    
    address creator;
    address operator;
    address transferringOperator;
    address governor;
    address shareToken;
    address accessController;
    bool reserved3; 
    uint256 scaler;
    uint256 collateralDecimals;
    address collateralToken;
    
    int256 poolCash;
    uint256 fundingTime;
    uint256 reserved5;
    uint256 operatorExpiration;
    mapping(address => int256) reserved1;
    bytes32[] reserved2;
    
    uint256 perpetualCount;
    mapping(uint256 => PerpetualStorage) perpetuals;
    
    int256 insuranceFundCap;
    int256 insuranceFund;
    int256 donatedInsuranceFund;
    address reserved4;
    
    bytes32[16] reserved;
}

struct PerpetualStorage {
    uint256 id;
    PerpetualState state;
    address oracle;
    int256 totalCollateral;
    int256 openInterest;
    
    OraclePriceData indexPriceData;
    OraclePriceData markPriceData;
    OraclePriceData settlementPriceData;
    
    int256 fundingRate;
    int256 unitAccumulativeFunding;
    
    int256 initialMarginRate;
    int256 maintenanceMarginRate;
    int256 operatorFeeRate;
    int256 lpFeeRate;
    int256 referralRebateRate;
    int256 liquidationPenaltyRate;
    int256 keeperGasReward;
    int256 insuranceFundRate;
    int256 reserved1;
    int256 maxOpenInterestRate;
    
    Option halfSpread;
    Option openSlippageFactor;
    Option closeSlippageFactor;
    Option fundingRateLimit;
    Option fundingRateFactor;
    Option ammMaxLeverage;
    Option maxClosePriceDiscount;
    
    uint256 totalAccount;
    int256 totalMarginWithoutPosition;
    int256 totalMarginWithPosition;
    int256 redemptionRateWithoutPosition;
    int256 redemptionRateWithPosition;
    EnumerableSetUpgradeable.AddressSet activeAccounts;
    
    int256 reserved2;
    int256 reserved3;
    
    mapping(address => MarginAccount) marginAccounts;
    Option defaultTargetLeverage;
    
    address reserved4;
    EnumerableSetUpgradeable.AddressSet ammKeepers;
    EnumerableSetUpgradeable.AddressSet reserved5;
    
    bytes32[12] reserved;
}

interface IPerpetual {
    
    function deposit(
        uint256 perpetualIndex,
        address trader,
        int256 amount
    ) external;

    
    function withdraw(
        uint256 perpetualIndex,
        address trader,
        int256 amount
    ) external;

    
    function settle(uint256 perpetualIndex, address trader) external;

    
    function clear(uint256 perpetualIndex) external;

    
    function trade(
        uint256 perpetualIndex,
        address trader,
        int256 amount,
        int256 limitPrice,
        uint256 deadline,
        address referrer,
        uint32 flags
    ) external returns (int256);

    
    function brokerTrade(bytes memory orderData, int256 amount) external returns (int256);

    
    function liquidateByAMM(uint256 perpetualIndex, address trader)
        external
        returns (int256 liquidationAmount);

    
    function liquidateByTrader(
        uint256 perpetualIndex,
        address liquidator,
        address trader,
        int256 amount,
        int256 limitPrice,
        uint256 deadline
    ) external returns (int256 liquidationAmount);
}

interface ILiquidityPool {
    
    function initialize(
        address operator,
        address collateral,
        uint256 collateralDecimals,
        address governor,
        bytes calldata initData
    ) external;

    
    function runLiquidityPool() external;

    
    function forceToSyncState() external;

    
    function addLiquidity(int256 cashToAdd) external;

    
    function removeLiquidity(int256 shareToRemove, int256 cashToReturn) external;
}

interface ILiquidityPoolGetter {
    
    function getLiquidityPoolInfo()
        external
        view
        returns (
            bool isRunning,
            bool isFastCreationEnabled,
            
            
            
            
            
            
            
            address[7] memory addresses,
            
            
            
            
            
            int256[5] memory intNums,
            
            
            
            
            uint256[4] memory uintNums
        );

    
    function getPerpetualInfo(uint256 perpetualIndex)
        external
        view
        returns (
            PerpetualState state,
            address oracle,
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            int256[39] memory nums
        );

    
    function getMarginAccount(uint256 perpetualIndex, address trader)
        external
        view
        returns (
            int256 cash,
            int256 position,
            int256 availableMargin,
            int256 margin,
            int256 settleableMargin,
            bool isInitialMarginSafe,
            bool isMaintenanceMarginSafe,
            bool isMarginSafe, 
            int256 targetLeverage
        );

    
    function getActiveAccountCount(uint256 perpetualIndex) external view returns (uint256);

    
    function listActiveAccounts(
        uint256 perpetualIndex,
        uint256 begin,
        uint256 end
    ) external view returns (address[] memory result);

    
    function getClearProgress(uint256 perpetualIndex)
        external
        view
        returns (uint256 left, uint256 total);

    
    function getPoolMargin() external view returns (int256 poolMargin, bool isSafe);

    
    function queryTrade(
        uint256 perpetualIndex,
        address trader,
        int256 amount,
        address referrer,
        uint32 flags
    )
        external
        returns (
            int256 tradePrice,
            int256 totalFee,
            int256 cost
        );

    
    function queryAddLiquidity(int256 cashToAdd, int256 shareToMint)
        external
        view
        returns (int256 cashToAddResult, int256 shareToMintResult);

    
    function queryRemoveLiquidity(int256 shareToRemove, int256 cashToReturn)
        external
        view
        returns (int256 shareToRemoveResult, int256 cashToReturnResult);
}

interface ILiquidityPoolGovernance {
    function setEmergencyState(uint256 perpetualIndex) external;
}

interface ILiquidityPoolFull is
    IPerpetual,
    ILiquidityPool,
    ILiquidityPoolGetter,
    ILiquidityPoolGovernance
{}

interface IAccessControl {
    function grantPrivilege(address trader, uint256 privilege) external;

    function revokePrivilege(address trader, uint256 privilege) external;

    function isGranted(
        address owner,
        address trader,
        uint256 privilege
    ) external view returns (bool);
}

interface IProxyAdmin {
    function getProxyImplementation(address proxy) external view returns (address);

    
    function upgrade(address proxy, address implementation) external;

    
    function upgradeAndCall(
        address proxy,
        address implementation,
        bytes memory data
    ) external payable;
}

interface IPoolCreator {
    function upgradeAdmin() external view returns (IProxyAdmin proxyAdmin);

    
    function createLiquidityPool(
        address collateral,
        uint256 collateralDecimals,
        int256 nonce,
        bytes calldata initData
    ) external returns (address liquidityPool, address governor);

    
    function upgradeToAndCall(
        bytes32 targetVersionKey,
        bytes memory dataForLiquidityPool,
        bytes memory dataForGovernor
    ) external;

    
    function isUniverseSettled() external view returns (bool);
}

interface ITracer {
    
    function activatePerpetualFor(address trader, uint256 perpetualIndex) external returns (bool);

    
    function deactivatePerpetualFor(address trader, uint256 perpetualIndex) external returns (bool);

    
    function registerOperatorOfLiquidityPool(address liquidityPool, address operator) external;
}

interface IVersionControl {
    function owner() external view returns (address);

    function getLatestVersion() external view returns (bytes32 latestVersionKey);

    
    function getVersion(bytes32 versionKey)
        external
        view
        returns (
            address liquidityPoolTemplate,
            address governorTemplate,
            uint256 compatibility
        );

    
    function getAppliedVersionKey(address liquidityPool, address governor)
        external
        view
        returns (bytes32 appliedVersionKey);

    
    function isVersionKeyValid(bytes32 versionKey) external view returns (bool isValid);

    
    function isVersionCompatible(bytes32 targetVersionKey, bytes32 baseVersionKey)
        external
        view
        returns (bool isCompatible);

    
    function listAvailableVersions(uint256 begin, uint256 end)
        external
        view
        returns (bytes32[] memory versionKeys);
}

interface IVariables {
    function owner() external view returns (address);

    
    function getVault() external view returns (address);

    
    function getVaultFeeRate() external view returns (int256);

    
    function getAccessController() external view returns (address);

    
    function getSymbolService() external view returns (address);

    
    function setVault(address newVault) external;

    
    function getMCBToken() external pure returns (address);

    
    function setVaultFeeRate(int256 newVaultFeeRate) external;
}

interface IKeeperWhitelist {
    
    function addKeeper(address keeper) external;

    
    function removeKeeper(address keeper) external;

    
    function isKeeper(address keeper) external view returns (bool);
}

interface IPoolCreatorFull is
    IPoolCreator,
    IVersionControl,
    ITracer,
    IVariables,
    IAccessControl,
    IKeeperWhitelist
{
    
    function owner() external view override(IVersionControl, IVariables) returns (address);
}

interface IOracle {
    
    function isMarketClosed() external returns (bool);

    
    function isTerminated() external returns (bool);

    
    function collateral() external view returns (string memory);

    
    function underlyingAsset() external view returns (string memory);

    
    function priceTWAPLong() external returns (int256 newPrice, uint256 newTimestamp);

    
    function priceTWAPShort() external returns (int256 newPrice, uint256 newTimestamp);
}

interface ISymbolService {
    function isWhitelistedFactory(address factory) external view returns (bool);

    function addWhitelistedFactory(address factory) external;

    function removeWhitelistedFactory(address factory) external;

    function getPerpetualUID(uint256 symbol)
        external
        view
        returns (address liquidityPool, uint256 perpetualIndex);

    function getSymbols(address liquidityPool, uint256 perpetualIndex)
        external
        view
        returns (uint256[] memory symbols);

    function allocateSymbol(address liquidityPool, uint256 perpetualIndex) external;

    function assignReservedSymbol(
        address liquidityPool,
        uint256 perpetualIndex,
        uint256 symbol
    ) external;
}

library SafeMathUpgradeable {
    
    function tryAdd(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        uint256 c = a + b;
        if (c < a) return (false, 0);
        return (true, c);
    }

    
    function trySub(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        if (b > a) return (false, 0);
        return (true, a - b);
    }

    
    function tryMul(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        
        
        
        if (a == 0) return (true, 0);
        uint256 c = a * b;
        if (c / a != b) return (false, 0);
        return (true, c);
    }

    
    function tryDiv(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        if (b == 0) return (false, 0);
        return (true, a / b);
    }

    
    function tryMod(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        if (b == 0) return (false, 0);
        return (true, a % b);
    }

    
    function add(uint256 a, uint256 b) internal pure returns (uint256) {
        uint256 c = a + b;
        require(c >= a, "SafeMath: addition overflow");
        return c;
    }

    
    function sub(uint256 a, uint256 b) internal pure returns (uint256) {
        require(b <= a, "SafeMath: subtraction overflow");
        return a - b;
    }

    
    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
        if (a == 0) return 0;
        uint256 c = a * b;
        require(c / a == b, "SafeMath: multiplication overflow");
        return c;
    }

    
    function div(uint256 a, uint256 b) internal pure returns (uint256) {
        require(b > 0, "SafeMath: division by zero");
        return a / b;
    }

    
    function mod(uint256 a, uint256 b) internal pure returns (uint256) {
        require(b > 0, "SafeMath: modulo by zero");
        return a % b;
    }

    
    function sub(uint256 a, uint256 b, string memory errorMessage) internal pure returns (uint256) {
        require(b <= a, errorMessage);
        return a - b;
    }

    
    function div(uint256 a, uint256 b, string memory errorMessage) internal pure returns (uint256) {
        require(b > 0, errorMessage);
        return a / b;
    }

    
    function mod(uint256 a, uint256 b, string memory errorMessage) internal pure returns (uint256) {
        require(b > 0, errorMessage);
        return a % b;
    }
}

library SignedSafeMathUpgradeable {
    int256 constant private _INT256_MIN = -2**255;

    
    function mul(int256 a, int256 b) internal pure returns (int256) {
        
        
        
        if (a == 0) {
            return 0;
        }

        require(!(a == -1 && b == _INT256_MIN), "SignedSafeMath: multiplication overflow");

        int256 c = a * b;
        require(c / a == b, "SignedSafeMath: multiplication overflow");

        return c;
    }

    
    function div(int256 a, int256 b) internal pure returns (int256) {
        require(b != 0, "SignedSafeMath: division by zero");
        require(!(b == -1 && a == _INT256_MIN), "SignedSafeMath: division overflow");

        int256 c = a / b;

        return c;
    }

    
    function sub(int256 a, int256 b) internal pure returns (int256) {
        int256 c = a - b;
        require((b >= 0 && c <= a) || (b < 0 && c > a), "SignedSafeMath: subtraction overflow");

        return c;
    }

    
    function add(int256 a, int256 b) internal pure returns (int256) {
        int256 c = a + b;
        require((b >= 0 && c >= a) || (b < 0 && c < a), "SignedSafeMath: addition overflow");

        return c;
    }
}

library Constant {
    address internal constant INVALID_ADDRESS = address(0);

    int256 internal constant SIGNED_ONE = 10**18;
    uint256 internal constant UNSIGNED_ONE = 10**18;

    uint256 internal constant PRIVILEGE_DEPOSIT = 0x1;
    uint256 internal constant PRIVILEGE_WITHDRAW = 0x2;
    uint256 internal constant PRIVILEGE_TRADE = 0x4;
    uint256 internal constant PRIVILEGE_LIQUIDATE = 0x8;
    uint256 internal constant PRIVILEGE_GUARD =
        PRIVILEGE_DEPOSIT | PRIVILEGE_WITHDRAW | PRIVILEGE_TRADE | PRIVILEGE_LIQUIDATE;
    
    uint256 internal constant SET_ALL_PERPETUALS_TO_EMERGENCY_STATE =
        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff;
}

library EnumerableSet {
    
    
    
    
    
    
    
    

    struct Set {
        
        bytes32[] _values;

        
        
        mapping (bytes32 => uint256) _indexes;
    }

    
    function _add(Set storage set, bytes32 value) private returns (bool) {
        if (!_contains(set, value)) {
            set._values.push(value);
            
            
            set._indexes[value] = set._values.length;
            return true;
        } else {
            return false;
        }
    }

    
    function _remove(Set storage set, bytes32 value) private returns (bool) {
        
        uint256 valueIndex = set._indexes[value];

        if (valueIndex != 0) { 
            
            
            

            uint256 toDeleteIndex = valueIndex - 1;
            uint256 lastIndex = set._values.length - 1;

            
            

            bytes32 lastvalue = set._values[lastIndex];

            
            set._values[toDeleteIndex] = lastvalue;
            
            set._indexes[lastvalue] = toDeleteIndex + 1; 

            
            set._values.pop();

            
            delete set._indexes[value];

            return true;
        } else {
            return false;
        }
    }

    
    function _contains(Set storage set, bytes32 value) private view returns (bool) {
        return set._indexes[value] != 0;
    }

    
    function _length(Set storage set) private view returns (uint256) {
        return set._values.length;
    }

   
    function _at(Set storage set, uint256 index) private view returns (bytes32) {
        require(set._values.length > index, "EnumerableSet: index out of bounds");
        return set._values[index];
    }

    

    struct Bytes32Set {
        Set _inner;
    }

    
    function add(Bytes32Set storage set, bytes32 value) internal returns (bool) {
        return _add(set._inner, value);
    }

    
    function remove(Bytes32Set storage set, bytes32 value) internal returns (bool) {
        return _remove(set._inner, value);
    }

    
    function contains(Bytes32Set storage set, bytes32 value) internal view returns (bool) {
        return _contains(set._inner, value);
    }

    
    function length(Bytes32Set storage set) internal view returns (uint256) {
        return _length(set._inner);
    }

   
    function at(Bytes32Set storage set, uint256 index) internal view returns (bytes32) {
        return _at(set._inner, index);
    }

    

    struct AddressSet {
        Set _inner;
    }

    
    function add(AddressSet storage set, address value) internal returns (bool) {
        return _add(set._inner, bytes32(uint256(uint160(value))));
    }

    
    function remove(AddressSet storage set, address value) internal returns (bool) {
        return _remove(set._inner, bytes32(uint256(uint160(value))));
    }

    
    function contains(AddressSet storage set, address value) internal view returns (bool) {
        return _contains(set._inner, bytes32(uint256(uint160(value))));
    }

    
    function length(AddressSet storage set) internal view returns (uint256) {
        return _length(set._inner);
    }

   
    function at(AddressSet storage set, uint256 index) internal view returns (address) {
        return address(uint160(uint256(_at(set._inner, index))));
    }


    

    struct UintSet {
        Set _inner;
    }

    
    function add(UintSet storage set, uint256 value) internal returns (bool) {
        return _add(set._inner, bytes32(value));
    }

    
    function remove(UintSet storage set, uint256 value) internal returns (bool) {
        return _remove(set._inner, bytes32(value));
    }

    
    function contains(UintSet storage set, uint256 value) internal view returns (bool) {
        return _contains(set._inner, bytes32(value));
    }

    
    function length(UintSet storage set) internal view returns (uint256) {
        return _length(set._inner);
    }

   
    function at(UintSet storage set, uint256 index) internal view returns (uint256) {
        return uint256(_at(set._inner, index));
    }
}

enum Round {
    CEIL,
    FLOOR
}

library SafeMathExt {
    using SafeMathUpgradeable for uint256;
    using SignedSafeMathUpgradeable for int256;

    
    function wmul(uint256 x, uint256 y) internal pure returns (uint256 z) {
        z = x.mul(y).add(Constant.UNSIGNED_ONE / 2) / Constant.UNSIGNED_ONE;
    }

    
    function wdiv(uint256 x, uint256 y) internal pure returns (uint256 z) {
        z = x.mul(Constant.UNSIGNED_ONE).add(y / 2).div(y);
    }

    
    function wfrac(
        uint256 x,
        uint256 y,
        uint256 z
    ) internal pure returns (uint256 r) {
        r = x.mul(y).add(z / 2).div(z);
    }

    
    function wmul(int256 x, int256 y) internal pure returns (int256 z) {
        z = roundHalfUp(x.mul(y), Constant.SIGNED_ONE) / Constant.SIGNED_ONE;
    }

    
    function wdiv(int256 x, int256 y) internal pure returns (int256 z) {
        if (y < 0) {
            y = neg(y);
            x = neg(x);
        }
        z = roundHalfUp(x.mul(Constant.SIGNED_ONE), y).div(y);
    }

    
    function wfrac(
        int256 x,
        int256 y,
        int256 z
    ) internal pure returns (int256 r) {
        int256 t = x.mul(y);
        if (z < 0) {
            z = neg(z);
            t = neg(t);
        }
        r = roundHalfUp(t, z).div(z);
    }

    function wmul(
        int256 x,
        int256 y,
        Round round
    ) internal pure returns (int256 z) {
        z = div(x.mul(y), Constant.SIGNED_ONE, round);
    }

    function wdiv(
        int256 x,
        int256 y,
        Round round
    ) internal pure returns (int256 z) {
        z = div(x.mul(Constant.SIGNED_ONE), y, round);
    }

    function wfrac(
        int256 x,
        int256 y,
        int256 z,
        Round round
    ) internal pure returns (int256 r) {
        int256 t = x.mul(y);
        r = div(t, z, round);
    }

    function abs(int256 x) internal pure returns (int256) {
        return x >= 0 ? x : neg(x);
    }

    function neg(int256 a) internal pure returns (int256) {
        return SignedSafeMathUpgradeable.sub(int256(0), a);
    }

    
    function roundHalfUp(int256 x, int256 y) internal pure returns (int256) {
        require(y > 0, "roundHalfUp only supports y > 0");
        if (x >= 0) {
            return x.add(y / 2);
        }
        return x.sub(y / 2);
    }

    
    function div(
        int256 x,
        int256 y,
        Round round
    ) internal pure returns (int256 divResult) {
        require(y != 0, "division by zero");
        divResult = x.div(y);
        if (x % y == 0) {
            return divResult;
        }
        bool isSameSign = Utils.hasTheSameSign(x, y);
        if (round == Round.CEIL && isSameSign) {
            divResult = divResult.add(1);
        }
        if (round == Round.FLOOR && !isSameSign) {
            divResult = divResult.sub(1);
        }
    }

    function max(int256 a, int256 b) internal pure returns (int256) {
        return a >= b ? a : b;
    }

    function min(int256 a, int256 b) internal pure returns (int256) {
        return a < b ? a : b;
    }

    function max(uint256 a, uint256 b) internal pure returns (uint256) {
        return a >= b ? a : b;
    }

    function min(uint256 a, uint256 b) internal pure returns (uint256) {
        return a < b ? a : b;
    }
}

library Utils {
    using SafeMathExt for int256;
    using SafeMathExt for uint256;
    using SafeMathUpgradeable for uint256;
    using SignedSafeMathUpgradeable for int256;
    using EnumerableSet for EnumerableSet.AddressSet;
    using EnumerableSetUpgradeable for EnumerableSetUpgradeable.AddressSet;
    using EnumerableSetUpgradeable for EnumerableSetUpgradeable.Bytes32Set;

    
    function hasTheSameSign(int256 x, int256 y) internal pure returns (bool) {
        if (x == 0 || y == 0) {
            return true;
        }
        return (x ^ y) >> 255 == 0;
    }

    
    function hasOpenedPosition(int256 amount, int256 delta) internal pure returns (bool) {
        if (amount == 0) {
            return false;
        }
        return Utils.hasTheSameSign(amount, delta);
    }

    
    function splitAmount(int256 amount, int256 delta) internal pure returns (int256, int256) {
        if (Utils.hasTheSameSign(amount, delta)) {
            return (0, delta);
        } else if (amount.abs() >= delta.abs()) {
            return (delta, 0);
        } else {
            return (amount.neg(), amount.add(delta));
        }
    }

    
    function isOpen(int256 amount, int256 delta) internal pure returns (bool) {
        return Utils.hasTheSameSign(amount, delta) || amount.abs() < delta.abs();
    }

    
    function chainID() internal pure returns (uint256 id) {
        assembly {
            id := chainid()
        }
    }

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

    function toArray(
        EnumerableSetUpgradeable.AddressSet storage set,
        uint256 begin,
        uint256 end
    ) internal view returns (address[] memory result) {
        require(end > begin, "begin should be lower than end");
        uint256 length = set.length();
        if (begin >= length) {
            return result;
        }
        uint256 safeEnd = end.min(length);
        result = new address[](safeEnd.sub(begin));
        for (uint256 i = begin; i < safeEnd; i++) {
            result[i.sub(begin)] = set.at(i);
        }
        return result;
    }

    function toArray(
        EnumerableSetUpgradeable.Bytes32Set storage set,
        uint256 begin,
        uint256 end
    ) internal view returns (bytes32[] memory result) {
        require(end > begin, "begin should be lower than end");
        uint256 length = set.length();
        if (begin >= length) {
            return result;
        }
        uint256 safeEnd = end.min(length);
        result = new bytes32[](safeEnd.sub(begin));
        for (uint256 i = begin; i < safeEnd; i++) {
            result[i.sub(begin)] = set.at(i);
        }
        return result;
    }
}

interface IInverseStateService {
    function isInverse(address liquidityPool, uint256 perpetualIndex) external view returns (bool);
}

contract Reader {
    using SafeMathExt for uint256;
    using Address for address;

    IInverseStateService public immutable inverseStateService;

    struct LiquidityPoolReaderResult {
        bool isRunning;
        bool isFastCreationEnabled;
        
        address[7] addresses;
        int256[5] intNums;
        uint256[4] uintNums;
        PerpetualReaderResult[] perpetuals;
        bool isAMMMaintenanceSafe;
    }

    struct PerpetualReaderResult {
        PerpetualState state;
        address oracle;
        
        int256[39] nums;
        uint256 symbol; 
        string underlyingAsset;
        bool isMarketClosed;
        bool isTerminated;
        int256 ammCashBalance;
        int256 ammPositionAmount;
        bool isInversePerpetual;
    }

    struct AccountReaderResult {
        int256 cash;
        int256 position;
        int256 availableMargin;
        int256 margin;
        int256 settleableMargin;
        bool isInitialMarginSafe;
        bool isMaintenanceMarginSafe;
        bool isMarginSafe;
        int256 targetLeverage;
    }

    struct AccountsResult {
        address account;
        int256 position;
        int256 margin;
        bool isSafe;
    }

    constructor(address inverseStateService_) {
        require(inverseStateService_.isContract(), "inverseStateService must be contract");
        inverseStateService = IInverseStateService(inverseStateService_);
    }

    
    function getAccountStorage(
        address liquidityPool,
        uint256 perpetualIndex,
        address account
    ) public returns (bool isSynced, AccountReaderResult memory accountStorage) {
        try ILiquidityPool(liquidityPool).forceToSyncState() {
            isSynced = true;
        } catch {
            isSynced = false;
        }
        (bool success, bytes memory data) = liquidityPool.call(
            abi.encodeWithSignature("getMarginAccount(uint256,address)", perpetualIndex, account)
        );
        require(success, "fail to retrieve margin account");
        accountStorage = _parseMarginAccount(data);
    }

    
    function isAMMMaintenanceSafe(address liquidityPool) public returns (bool) {
        (, , , , uint256[4] memory uintNums) = ILiquidityPoolFull(liquidityPool)
            .getLiquidityPoolInfo();
        
        if (uintNums[1] == 0) {
            return true;
        }
        try
            ILiquidityPoolGovernance(liquidityPool).setEmergencyState(
                Constant.SET_ALL_PERPETUALS_TO_EMERGENCY_STATE
            )
        {
            return false;
        } catch {
            return true;
        }
    }

    function _parseMarginAccount(bytes memory data)
        internal
        pure
        returns (AccountReaderResult memory accountStorage)
    {
        require(data.length % 0x20 == 0, "malformed input data");
        assembly {
            let len := mload(data)
            let src := add(data, 0x20)
            let dst := accountStorage
            for {
                let end := add(src, len)
            } lt(src, end) {
                src := add(src, 0x20)
                dst := add(dst, 0x20)
            } {
                mstore(dst, mload(src))
            }
        }
    }

    
    function getPoolMargin(address liquidityPool)
        public
        returns (
            bool isSynced,
            int256 poolMargin,
            bool isSafe
        )
    {
        try ILiquidityPool(liquidityPool).forceToSyncState() {
            isSynced = true;
        } catch {
            isSynced = false;
        }
        (poolMargin, isSafe) = ILiquidityPoolFull(liquidityPool).getPoolMargin();
    }

    
    function queryTrade(
        address liquidityPool,
        uint256 perpetualIndex,
        address trader,
        int256 amount,
        address referrer,
        uint32 flags
    )
        external
        returns (
            bool isSynced,
            int256 tradePrice,
            int256 totalFee,
            int256 cost
        )
    {
        try ILiquidityPool(liquidityPool).forceToSyncState() {
            isSynced = true;
        } catch {
            isSynced = false;
        }
        (tradePrice, totalFee, cost) = ILiquidityPoolFull(liquidityPool).queryTrade(
            perpetualIndex,
            trader,
            amount,
            referrer,
            flags
        );
    }

    
    function getLiquidityPoolStorage(address liquidityPool)
        public
        returns (bool isSynced, LiquidityPoolReaderResult memory pool)
    {
        try ILiquidityPool(liquidityPool).forceToSyncState() {
            isSynced = true;
        } catch {
            isSynced = false;
        }
        
        (
            pool.isRunning,
            pool.isFastCreationEnabled,
            pool.addresses,
            pool.intNums,
            pool.uintNums
        ) = ILiquidityPoolFull(liquidityPool).getLiquidityPoolInfo();
        
        uint256 perpetualCount = pool.uintNums[1];
        address symbolService = IPoolCreatorFull(pool.addresses[0]).getSymbolService();
        pool.perpetuals = new PerpetualReaderResult[](perpetualCount);
        for (uint256 i = 0; i < perpetualCount; i++) {
            getPerpetual(pool.perpetuals[i], symbolService, liquidityPool, i);
        }
        
        pool.isAMMMaintenanceSafe = true;
        if (perpetualCount > 0) {
            try
                ILiquidityPoolGovernance(liquidityPool).setEmergencyState(
                    Constant.SET_ALL_PERPETUALS_TO_EMERGENCY_STATE
                )
            {
                pool.isAMMMaintenanceSafe = false;
            } catch {}
        }
    }

    function getPerpetual(
        PerpetualReaderResult memory perp,
        address symbolService,
        address liquidityPool,
        uint256 perpetualIndex
    ) private {
        
        (perp.state, perp.oracle, perp.nums) = ILiquidityPoolFull(liquidityPool).getPerpetualInfo(
            perpetualIndex
        );
        
        perp.symbol = getMinSymbol(symbolService, liquidityPool, perpetualIndex);
        
        perp.underlyingAsset = IOracle(perp.oracle).underlyingAsset();
        perp.isMarketClosed = IOracle(perp.oracle).isMarketClosed();
        perp.isTerminated = IOracle(perp.oracle).isTerminated();
        
        (perp.ammCashBalance, perp.ammPositionAmount, , , , , , , ) = ILiquidityPoolFull(
            liquidityPool
        ).getMarginAccount(perpetualIndex, liquidityPool);
        
        perp.isInversePerpetual = inverseStateService.isInverse(liquidityPool, perpetualIndex);
    }

    function readIndexPrices(address[] memory oracles)
        public
        returns (bool[] memory isSuccess, int256[] memory indexPrices, uint256[] memory timestamps)
    {
        isSuccess = new bool[](oracles.length);
        indexPrices = new int256[](oracles.length);
        timestamps = new uint256[](oracles.length);
        for (uint256 i = 0; i < oracles.length; i++) {
            if (!oracles[i].isContract()) {
                continue;
            }
            try IOracle(oracles[i]).priceTWAPShort() returns (int256 indexPrice, uint256 timestamp) {
                isSuccess[i] = true;
                indexPrices[i] = indexPrice;
                timestamps[i] = timestamp;
            } catch {}
        }
    }

    function getMinSymbol(
        address symbolService,
        address liquidityPool,
        uint256 perpetualIndex
    ) private view returns (uint256) {
        uint256[] memory symbols;
        symbols = ISymbolService(symbolService).getSymbols(liquidityPool, perpetualIndex);
        uint256 symbolLength = symbols.length;
        require(symbolLength >= 1, "symbol not found");
        uint256 minSymbol = type(uint256).max;
        for (uint256 i = 0; i < symbolLength; i++) {
            minSymbol = minSymbol.min(symbols[i]);
        }
        return minSymbol;
    }

    
    function getAccountsInfo(
        address liquidityPool,
        uint256 perpetualIndex,
        uint256 begin,
        uint256 end
    ) public returns (bool isSynced, AccountsResult[] memory result) {
        address[] memory accounts = ILiquidityPoolFull(liquidityPool).listActiveAccounts(
            perpetualIndex,
            begin,
            end
        );
        try ILiquidityPool(liquidityPool).forceToSyncState() {
            isSynced = true;
        } catch {
            isSynced = false;
        }
        result = new AccountsResult[](accounts.length);
        for (uint256 i = 0; i < accounts.length; i++) {
            int256 margin;
            int256 position;
            bool isMaintenanceMarginSafe;
            (, position, , margin, , , isMaintenanceMarginSafe, , ) = ILiquidityPoolFull(
                liquidityPool
            ).getMarginAccount(perpetualIndex, accounts[i]);
            result[i].account = accounts[i];
            result[i].position = position;
            result[i].margin = margin;
            result[i].isSafe = isMaintenanceMarginSafe;
        }
    }

    
    function queryAddLiquidity(
        address liquidityPool,
        int256 cashToAdd,
        int256 shareToMint
    )
        public
        returns (
            bool isSynced,
            int256 cashToAddResult,
            int256 shareToMintResult
        )
    {
        try ILiquidityPool(liquidityPool).forceToSyncState() {
            isSynced = true;
        } catch {
            isSynced = false;
        }
        (cashToAddResult, shareToMintResult) = ILiquidityPoolFull(liquidityPool).queryAddLiquidity(
            cashToAdd,
            shareToMint
        );
    }

    
    function queryRemoveLiquidity(
        address liquidityPool,
        int256 shareToRemove,
        int256 cashToReturn
    )
        public
        returns (
            bool isSynced,
            int256 shareToRemoveResult,
            int256 cashToReturnResult
        )
    {
        try ILiquidityPool(liquidityPool).forceToSyncState() {
            isSynced = true;
        } catch {
            isSynced = false;
        }
        (shareToRemoveResult, cashToReturnResult) = ILiquidityPoolFull(liquidityPool)
            .queryRemoveLiquidity(shareToRemove, cashToReturn);
    }
}