// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";

import {ReentrancyGuardUpgradeable} from "@openzeppelin/contracts-upgradeable/security/ReentrancyGuardUpgradeable.sol";

import { IHyperpieFactory } from "./interfaces/factories/IHyperpieFactory.sol";

import { IHyperpieConfig } from "../interfaces/IHyperpieConfig.sol";
import { PoolFees } from "../memedex/rewards/PoolFees.sol";
import { IHyperpiePair } from "./interfaces/IHyperpiePair.sol";
import { IPoolFees } from "./interfaces/IPoolFees.sol";

import { HyperpieConstants } from "../utils/HyperpieConstants.sol";
import { UtilLib } from "../utils/UtilLib.sol";
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import { ERC20Permit } from "@openzeppelin/contracts/token/ERC20/extensions/ERC20Permit.sol";
import { Pausable } from "@openzeppelin/contracts/security/Pausable.sol";

import "@openzeppelin/contracts/utils/Create2.sol";
import { BeaconProxy } from "@openzeppelin/contracts/proxy/beacon/BeaconProxy.sol";

import { RoleCheckerLib } from "../libraries/RoleCheckerLib.sol";

contract HyperpiePair is 
    IHyperpiePair, 
    ERC20Permit,
    ReentrancyGuard
{
    using SafeERC20 for IERC20;

    /*//////////////////////////////////////////////////////////////
                            STATE VARIABLES
    //////////////////////////////////////////////////////////////*/
    uint256 internal constant MINIMUM_LIQUIDITY = 10 ** 3;
    uint256 internal constant MINIMUM_K = 10 ** 10;

    // LP token metadata
    string private _name;
    string private _symbol;

    bool public stable;

    // Token addresses for the pair (e.g., MEME and mHYPE)
    address public token0;
    address public token1;

    address public factory;
    address public poolFees;

    uint256 internal decimals0;
    uint256 internal decimals1;

    // Reserves of each token
    uint256 private reserve0;
    uint256 private reserve1;
    uint256  private blockTimestampLast;

    uint public reserve0CumulativeLast;
    uint public reserve1CumulativeLast;

    uint256 public index0 = 0;
    uint256 public index1 = 0;

    mapping(address => uint256) public claimable0;
    mapping(address => uint256) public claimable1;
    mapping(address => uint256) public supplyIndex0;
    mapping(address => uint256) public supplyIndex1;

    IHyperpieConfig public hyperpieConfig;
    
    /*//////////////////////////////////////////////////////////////
                            CONSTRUCTOR & INITIALIZER
    //////////////////////////////////////////////////////////////*/

    modifier whenNotPaused() {
        if (hyperpieConfig.isDexV2Paused()) revert IHyperpieConfig.DexV2Locked();
        _;
    }

    constructor(
    ) ERC20("", "") ERC20Permit("") {}

    // Initialize the pair with token addresses (can only be done once)
    function initialize(address _token0, address _token1, address _hyperpieConfig, bool _stable) external {
        if (factory != address(0)) revert FactoryAlreadySet();
        factory = msg.sender;        
        UtilLib.checkNonZeroAddress(_token0);
        UtilLib.checkNonZeroAddress(_token1);   
        token0 = _token0;
        token1 = _token1;
        stable = _stable;
        hyperpieConfig = IHyperpieConfig(_hyperpieConfig);   

        address _poolFeesBeacon = hyperpieConfig.getAddress(HyperpieConstants.POOL_FEES_BEACON);
        
        PoolFees _poolFees = PoolFees(
            Create2.deploy(
                0,
                bytes32(uint256(uint160(address(this)))),
                // set the beacon address to the poolFeesBeacon and initialize it
                abi.encodePacked(type(BeaconProxy).creationCode, abi.encode(_poolFeesBeacon, ""))
            )
        );
        _poolFees.initialize(_token0, _token1, _hyperpieConfig);
        poolFees = address(_poolFees);
    
        decimals0 = 10 ** ERC20(_token0).decimals();
        decimals1 = 10 ** ERC20(_token1).decimals();

        string memory _tokenA = ERC20(_token0).symbol();
        string memory _tokenB = ERC20(_token1).symbol();

        if (stable) {
            _name = string.concat(_tokenA, "/", _tokenB, " Stable LP");
            _symbol = string.concat(HyperpieConstants.STABLE_PREFIX, _tokenA, "-", _tokenB, "-LP");
        } else {
            _name = string.concat(_tokenA, "/", _tokenB, " V2 LP");
            _symbol = string.concat(HyperpieConstants.V2_PREFIX, _tokenA, "-", _tokenB, "-LP");
        }
    }
    
    /*//////////////////////////////////////////////////////////////
                            VIEW FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    // Return current reserves and last timestamp
    function getReserves() public view returns (uint256, uint256, uint256) {
        return (reserve0, reserve1, blockTimestampLast);
    }

    function name() public view override returns (string memory) {
        return _name;
    }

    function symbol() public view override returns (string memory) {
        return _symbol;
    }

    function getAmountOut(uint256 amountIn, address tokenIn) external view returns (uint256) {
        (uint256 _reserve0, uint256 _reserve1, ) = getReserves();
        amountIn -= (amountIn * IHyperpieFactory(factory).getFee(address(this), stable)) / HyperpieConstants.DENOMINATOR; // remove fee from amount received
        return _getAmountOut(amountIn, tokenIn, _reserve0, _reserve1);
    }

    function tokens() external view returns (address, address) {
        return (token0, token1);
    }

    function getK() external view returns (uint256) {
        return _k(reserve0, reserve1);
    }

    function currentCumulativePrices() public view
        returns (uint256 reserve0Cumulative, uint256 reserve1Cumulative, uint256 blockTimestamp)
    {
        blockTimestamp = block.timestamp;
        reserve0Cumulative = reserve0CumulativeLast;
        reserve1Cumulative = reserve1CumulativeLast;

        // if time has elapsed since the last update on the pool, mock the accumulated price values
        (uint256 _reserve0, uint256 _reserve1, uint256 _blockTimestampLast) = getReserves();
        if (_blockTimestampLast != blockTimestamp) {
            // subtraction overflow is desired
            uint256 timeElapsed = blockTimestamp - _blockTimestampLast;
            reserve0Cumulative += _reserve0 * timeElapsed;
            reserve1Cumulative += _reserve1 * timeElapsed;
        }
    }

    /*//////////////////////////////////////////////////////////////
                            EXTERNAL FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    // Mint LP tokens when liquidity is added
    function mint(address to) external whenNotPaused nonReentrant returns (uint256 liquidity) {
        (uint256 _reserve0, uint256 _reserve1, ) = getReserves();

        uint256 balance0 = IERC20(token0).balanceOf(address(this));
        uint256 balance1 = IERC20(token1).balanceOf(address(this));
        uint256 amount0 = balance0 - _reserve0;
        uint256 amount1 = balance1 - _reserve1;

        uint256 _totalSupply = totalSupply(); 

        if (_totalSupply  == 0) {
            liquidity = Math.sqrt(amount0 * amount1) - MINIMUM_LIQUIDITY;
            _mint(address(1), MINIMUM_LIQUIDITY); // permanently lock the first MINIMUM_LIQUIDITY tokens
            if (stable) {
                if ((amount0 * 1e18) / decimals0 != (amount1 * 1e18) / decimals1) revert DepositsNotEqual();
                if (_k(amount0, amount1) <= MINIMUM_K) revert BelowMinimumK();
            }
        } else {
            liquidity = Math.min((amount0 * _totalSupply) / _reserve0, (amount1 * _totalSupply) / _reserve1);
        }
        if (liquidity == 0) revert InsufficientLiquidityMinted();
        _mint(to, liquidity);

        _update(balance0, balance1, _reserve0, _reserve1);
        emit Mint(msg.sender, amount0, amount1);
    }

    // Burn LP tokens to remove liquidity and return underlying tokens
    function burn(address to) external whenNotPaused nonReentrant returns (uint256 amount0, uint256 amount1) {
        UtilLib.checkNonZeroAddress(to);
        (uint256 _reserve0, uint256 _reserve1, ) = getReserves();

        uint256 balance0 = IERC20(token0).balanceOf(address(this));
        uint256 balance1 = IERC20(token1).balanceOf(address(this));
        uint256 liquidity = balanceOf(address(this));

        uint256 _totalSupply = totalSupply(); 
        amount0 = (liquidity * balance0) / _totalSupply;
        amount1 = (liquidity * balance1) / _totalSupply;
        if (amount0 == 0 || amount1 == 0) revert InsufficientLiquidityBurned();

        _burn(address(this), liquidity);
        IERC20(token0).safeTransfer(to, amount0);
        IERC20(token1).safeTransfer(to, amount1);

        _update(IERC20(token0).balanceOf(address(this)), IERC20(token1).balanceOf(address(this)), _reserve0, _reserve1);
        emit Burn(msg.sender, amount0, amount1, to);
    }

    // Swap tokens, applying fee and transferring fees to the PoolFees contract
    function swap(uint256 amount0Out, uint256 amount1Out, address to) external whenNotPaused nonReentrant {
        UtilLib.checkNonZeroAddress(to);
        if (amount0Out == 0 && amount1Out == 0) revert InsufficientOutputAmount();
        (uint256 _reserve0, uint256 _reserve1, ) = getReserves();
        if (amount0Out >= _reserve0 || amount1Out >= _reserve1) revert InsufficientLiquidity();

        uint256 _balance0;
        uint256 _balance1;
        {
            (address _token0, address _token1) = (token0, token1);
            if (to == _token0 || to == _token1) revert InvalidTo();
            if (amount0Out > 0) IERC20(_token0).safeTransfer(to, amount0Out);
            if (amount1Out > 0) IERC20(_token1).safeTransfer(to, amount1Out);
            _balance0 = IERC20(_token0).balanceOf(address(this));
            _balance1 = IERC20(_token1).balanceOf(address(this));                     
        }

        uint256 amount0In = _balance0 > _reserve0 - amount0Out ? _balance0 - (_reserve0 - amount0Out) : 0;
        uint256 amount1In = _balance1 > _reserve1 - amount1Out ? _balance1 - (_reserve1 - amount1Out) : 0;

        if (amount0In == 0 && amount1In == 0) revert InsufficientInputAmount();
        {
            (address _token0, address _token1) = (token0, token1);

            uint256 fees = IHyperpieFactory(factory).getFee(address(this), stable);
            if (amount0In > 0) _update0((amount0In * fees) / HyperpieConstants.DENOMINATOR); // accrue fees for token0 and move them out of pool
            if (amount1In > 0) _update1((amount1In * fees) / HyperpieConstants.DENOMINATOR); // accrue fees for token1 and move them out of pool

            _balance0 = IERC20(_token0).balanceOf(address(this)); // since we removed tokens, we need to reconfirm balances, can also simply use previous balance - amountIn/ 10000, but doing balanceOf again as safety check
            _balance1 = IERC20(_token1).balanceOf(address(this));

            if (_k(_balance0, _balance1) < _k(_reserve0, _reserve1)) revert K();
        }
            
        // Update reserves based on new balances after fee transfers
        _update(_balance0, _balance1, _reserve0, _reserve1);

        emit Swap(to, amount0In, amount1In, amount0Out, amount1Out);
    }

    function sync() external nonReentrant {
        if (totalSupply() == 0) revert InsufficientLiquidity();
        _update(IERC20(token0).balanceOf(address(this)), IERC20(token1).balanceOf(address(this)), reserve0, reserve1);
    }

    function claimFees() external nonReentrant whenNotPaused returns (uint256 claimed0, uint256 claimed1)  {
        address sender = _msgSender();
        _updateFor(sender);

        claimed0 = claimable0[sender];
        claimed1 = claimable1[sender];

        if (claimed0 > 0 || claimed1 > 0) {
            claimable0[sender] = 0;
            claimable1[sender] = 0;

            PoolFees(poolFees).claimFeesFor(sender, claimed0, claimed1);

            emit Claim(sender, sender, claimed0, claimed1);
        }
    }

    function lpRevShareBPS() external view returns (uint256 lpRevBps) {
        lpRevBps = PoolFees(poolFees).lpRevShareBPS();
    }

   /*//////////////////////////////////////////////////////////////
                            ADMIN AND BOT FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    function setName(string calldata __name) external {
        RoleCheckerLib.onlyMetaConfigRole(address(hyperpieConfig));
        _name = __name;
        emit SetName(__name);
    }

    function setSymbol(string calldata __symbol) external {
        RoleCheckerLib.onlyMetaConfigRole(address(hyperpieConfig));
        _symbol = __symbol;
        emit SetSymbol(__symbol);
    }

    function updateConfig(address _hyperpieConfig) external {
        UtilLib.checkNonZeroAddress(_hyperpieConfig);
        RoleCheckerLib.onlyDefaultAdmin(address(hyperpieConfig));
        hyperpieConfig = IHyperpieConfig(_hyperpieConfig);
        emit UpdatedHyperpieConfig(_hyperpieConfig);
    }
    
    /*//////////////////////////////////////////////////////////////
                            INTERNAL FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    function _getAmountOut(
        uint256 amountIn,
        address tokenIn,
        uint256 _reserve0,
        uint256 _reserve1
    ) internal view returns (uint256) {
        if (stable) {
            uint256 xy = _k(_reserve0, _reserve1);
            _reserve0 = (_reserve0 * 1e18) / decimals0;
            _reserve1 = (_reserve1 * 1e18) / decimals1;
            (uint256 reserveA, uint256 reserveB) = tokenIn == token0 ? (_reserve0, _reserve1) : (_reserve1, _reserve0);
            amountIn = tokenIn == token0 ? (amountIn * 1e18) / decimals0 : (amountIn * 1e18) / decimals1;
            uint256 y = reserveB - _get_y(amountIn + reserveA, xy, reserveB);
            return (y * (tokenIn == token0 ? decimals1 : decimals0)) / 1e18;
        } else {
            (uint256 reserveA, uint256 reserveB) = tokenIn == token0 ? (_reserve0, _reserve1) : (_reserve1, _reserve0);
            return (amountIn * reserveB) / (reserveA + amountIn);
        }
    }

     function _get_y(uint256 x0, uint256 xy, uint256 y) internal view returns (uint256) {
        for (uint256 i = 0; i < 255; i++) {
            uint256 k = _f(x0, y);
            if (k < xy) {
                // there are two cases where dy == 0
                // case 1: The y is converged and we find the correct answer
                // case 2: _d(x0, y) is too large compare to (xy - k) and the rounding error
                //         screwed us.
                //         In this case, we need to increase y by 1
                uint256 dy = ((xy - k) * 1e18) / _d(x0, y);
                if (dy == 0) {
                    if (k == xy) {
                        // We found the correct answer. Return y
                        return y;
                    }
                    if (_k(x0, y + 1) > xy) {
                        // If _k(x0, y + 1) > xy, then we are close to the correct answer.
                        // There's no closer answer than y + 1
                        return y + 1;
                    }
                    dy = 1;
                }
                y = y + dy;
            } else {
                uint256 dy = ((k - xy) * 1e18) / _d(x0, y);
                if (dy == 0) {
                    if (k == xy || _f(x0, y - 1) < xy) {
                        // Likewise, if k == xy, we found the correct answer.
                        // If _f(x0, y - 1) < xy, then we are close to the correct answer.
                        // There's no closer answer than "y"
                        // It's worth mentioning that we need to find y where f(x0, y) >= xy
                        // As a result, we can't return y - 1 even it's closer to the correct answer
                        return y;
                    }
                    dy = 1;
                }
                y = y - dy;
            }
        }
        revert Y();
    }

    function _f(uint256 x0, uint256 y) internal pure returns (uint256) {
        uint256 _a = (x0 * y) / 1e18;
        uint256 _b = ((x0 * x0) / 1e18 + (y * y) / 1e18);
        return (_a * _b) / 1e18;
    }

    function _d(uint256 x0, uint256 y) internal pure returns (uint256) {
        return (3 * x0 * ((y * y) / 1e18)) / 1e18 + ((((x0 * x0) / 1e18) * x0) / 1e18);
    }

    // Internal function to update reserves
    // update reserves and, on the first call per block, price accumulators
    function _update(uint256 balance0, uint256 balance1, uint256 _reserve0, uint256 _reserve1) private {
        uint256 blockTimestamp = block.timestamp;
        uint256 timeElapsed = blockTimestamp - blockTimestampLast; // overflow is desired

        if (timeElapsed > 0 && _reserve0 != 0 && _reserve1 != 0) {
            // * never overflows, and + overflow is desired
            reserve0CumulativeLast += _reserve0 * timeElapsed;
            reserve1CumulativeLast += _reserve1 * timeElapsed;
        }

        reserve0 = uint256(balance0);
        reserve1 = uint256(balance1);
        blockTimestampLast = blockTimestamp;

        emit Sync(reserve0, reserve1);
    }

    function _k(uint256 x, uint256 y) internal view returns (uint256) {
        if (stable) {
            uint256 _x = (x * 1e18) / decimals0;
            uint256 _y = (y * 1e18) / decimals1;
            uint256 _a = (_x * _y) / 1e18;
            uint256 _b = ((_x * _x) / 1e18 + (_y * _y) / 1e18);
            return (_a * _b) / 1e18; // x3y+y3x >= k
        } else {
            return x * y; // xy >= k
        }
    }

        /// @dev Accrue fees on token0
    function _update0(uint256 amount) internal {
        // Only update on this pool if there is a fee
        if (amount == 0) return;

        _distributeFees(token0, amount);
        uint256 _ratio = (amount * 1e18) / totalSupply(); // 1e18 adjustment is removed during claim
        if (_ratio > 0) {
            index0 += _ratio;
        }
        emit Fees(_msgSender(), amount, 0);
    }

    /// @dev Accrue fees on token1
    function _update1(uint256 amount) internal {
        // Only update on this pool if there is a fee
        if (amount == 0) return;

        _distributeFees(token1, amount);
        uint256 _ratio = (amount * 1e18) / totalSupply();
        if (_ratio > 0) {
            index1 += _ratio;
        }
        emit Fees(_msgSender(), 0, amount);
    }

    function _distributeFees(address _token, uint256 _amount) internal {
        IERC20(_token).safeApprove(address(poolFees), _amount);
        IPoolFees(poolFees).collectFee(_token, _amount);
    }

    function _updateFor(address recipient) internal {
        uint256 _supplied = balanceOf(recipient); // get LP balance of `recipient`
        if (_supplied > 0) {
            uint256 _supplyIndex0 = supplyIndex0[recipient]; // get last adjusted index0 for recipient
            uint256 _supplyIndex1 = supplyIndex1[recipient];
            uint256 _index0 = index0; // get global index0 for accumulated fees
            uint256 _index1 = index1;
            supplyIndex0[recipient] = _index0; // update user current position to global position
            supplyIndex1[recipient] = _index1;
            uint256 _delta0 = _index0 - _supplyIndex0; // see if there is any difference that need to be accrued
            uint256 _delta1 = _index1 - _supplyIndex1;

            if (_delta0 > 0) {
                uint256 _share = (_supplied * _delta0) / 1e18; // add accrued difference for each supplied token
                claimable0[recipient] += _share * PoolFees(poolFees).lpRevShareBPS() / HyperpieConstants.DENOMINATOR;
            }

            if (_delta1 > 0) {
                uint256 _share = (_supplied * _delta1) / 1e18;
                claimable1[recipient] += _share * PoolFees(poolFees).lpRevShareBPS() / HyperpieConstants.DENOMINATOR;
            }
        } else {
            supplyIndex0[recipient] = index0; // new users are set to the default global state
            supplyIndex1[recipient] = index1;
        }
    }

    function _beforeTokenTransfer(address from, address to, uint256) internal override {
        _updateFor(from);
        _updateFor(to);
    }
}
