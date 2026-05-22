// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity 0.8.20;

import "@solidstate/contracts/utils/ReentrancyGuard.sol";
import "@solidstate/contracts/access/access_control/AccessControl.sol";
import "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";

interface IInch_Module {
    function inch_swap(
        uint256 valueIn,
        address executor,
        IInch.SwapDescription calldata desc,
        bytes calldata permit,
        bytes calldata data
    ) external returns (uint256 returnAmount, uint256 spentAmount);

    function inch_uniswapV3Swap(uint256 valueIn, uint256 amount, uint256 minReturn, uint256[] calldata pools)
        external
        returns (uint256 returnAmount);

    function inch_clipperSwap(
        uint256 valueIn,
        address clipperExchange,
        address srcToken,
        address dstToken,
        uint256 inputAmount,
        uint256 outputAmount,
        uint256 goodUntil,
        bytes32 r,
        bytes32 vs
    ) external returns (uint256 returnAmount);
}

contract Inch_Module is IInch_Module, AccessControl, ReentrancyGuard {
    using EnumerableSet for EnumerableSet.AddressSet;

    bytes32 public constant EXECUTOR_ROLE = keccak256("EXECUTOR_ROLE");
    uint256 private constant _ONE_FOR_ZERO_MASK = 1 << 255;

    IInch public immutable inch;
    address public immutable clipper;

    constructor(address _inch, address _clipper) {
        inch = IInch(_inch);
        clipper = _clipper;
    }

    function inch_swap(
        uint256 valueIn,
        address executor,
        IInch.SwapDescription calldata desc,
        bytes calldata permit,
        bytes calldata data
    ) external onlyRole(EXECUTOR_ROLE) nonReentrant returns (uint256 returnAmount, uint256 spentAmount) {
        validateToken(address(desc.srcToken));
        validateToken(address(desc.dstToken));
        (returnAmount, spentAmount) = inch.swap{value: valueIn}(executor, desc, permit, data);
    }

    function inch_uniswapV3Swap(uint256 valueIn, uint256 amount, uint256 minReturn, uint256[] calldata pools)
        external
        onlyRole(EXECUTOR_ROLE)
        nonReentrant
        returns (uint256 returnAmount)
    {
        uint256 len = pools.length;
        if (len == 1) {
            IPool pool = IPool(address(uint160(pools[0])));
            validateToken(pool.token0());
            validateToken(pool.token1());
        } else {
            // Validate start token
            bool zeroForOne = pools[0] & _ONE_FOR_ZERO_MASK == 0;
            IPool pool = IPool(address(uint160(pools[0])));
            zeroForOne ? validateToken(pool.token0()) : validateToken(pool.token1());

            // Validate end token
            zeroForOne = pools[len - 1] & _ONE_FOR_ZERO_MASK == 0;
            pool = IPool(address(uint160(pools[len - 1])));
            zeroForOne ? validateToken(pool.token1()) : validateToken(pool.token0());
        }
        returnAmount = inch.uniswapV3Swap{value: valueIn}(amount, minReturn, pools);
    }

    function inch_clipperSwap(
        uint256 valueIn,
        address _clipper,
        address srcToken,
        address dstToken,
        uint256 inputAmount,
        uint256 outputAmount,
        uint256 goodUntil,
        bytes32 r,
        bytes32 vs
    ) external onlyRole(EXECUTOR_ROLE) nonReentrant returns (uint256 returnAmount) {
        require(_clipper == clipper, "invalid clipper exchange");
        if (address(srcToken) != address(0)) {
            validateToken(address(srcToken));
        }
        validateToken(address(dstToken));
        returnAmount = inch.clipperSwap{value: valueIn}(
            _clipper, srcToken, dstToken, inputAmount, outputAmount, goodUntil, r, vs
        );
    }

    struct TraderV0Storage {
        string name;
        address feeReceiver;
        address vault;
        address baseAsset;
        uint256 performanceFeeRate;
        uint256 managementFeeRate;
        uint256 custodyTime;
        uint256 custodiedAmount;
        uint256 totalFees;
        EnumerableSet.AddressSet allowedTokens;
        EnumerableSet.AddressSet allowedSpenders;
        bool initialized;
    }

    bytes32 internal constant TRADERV0_POSITION = bytes32(uint256(keccak256("TraderV0.storage")) - 1);

    function getTraderV0Storage() internal pure returns (TraderV0Storage storage storageStruct) {
        bytes32 position = TRADERV0_POSITION;
        // solhint-disable-next-line no-inline-assembly
        assembly {
            storageStruct.slot := position
        }
    }

    function validateSwapPath(address[] memory _path) internal view {
        TraderV0Storage storage s = getTraderV0Storage();
        uint256 len = _path.length;
        for (uint256 i; i < len;) {
            require(s.allowedTokens.contains(_path[i]), "Invalid swap path");
            unchecked {
                ++i;
            }
        }
    }

    function validateToken(address _token) internal view {
        require(getTraderV0Storage().allowedTokens.contains(_token), "Invalid token");
    }
}

interface IPool {
    function token0() external view returns (address);
    function token1() external view returns (address);
}

interface IInch {
    struct SwapDescription {
        address srcToken;
        address dstToken;
        address payable srcReceiver;
        address payable dstReceiver;
        uint256 amount;
        uint256 minReturnAmount;
        uint256 flags;
    }

    function swap(address executor, SwapDescription calldata desc, bytes calldata permit, bytes calldata data)
        external
        payable
        returns (uint256 returnAmount, uint256 spentAmount);

    function uniswapV3Swap(uint256 amount, uint256 minReturn, uint256[] calldata pools)
        external
        payable
        returns (uint256 returnAmount);

    function clipperSwap(
        address clipperExchange,
        address srcToken,
        address dstToken,
        uint256 inputAmount,
        uint256 outputAmount,
        uint256 goodUntil,
        bytes32 r,
        bytes32 vs
    ) external payable returns (uint256 returnAmount);
}
