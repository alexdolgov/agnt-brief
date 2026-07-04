// SPDX-License-Identifier: GPL-3.0

pragma solidity =0.8.17;

import "@openzeppelin/contracts-upgradeable/utils/AddressUpgradeable.sol";
import "./BounceBase.sol";

contract BounceDutchAuction is BounceBase {
    using SafeMathUpgradeable for uint256;
    using SafeERC20Upgradeable for IERC20Upgradeable;

    struct CreateReq {
        // pool name
        string name;
        // address of sell token
        address token0;
        // address of buy token
        address token1;
        // total amount of token0
        uint256 amountTotal0;
        // maximum amount of token1 that creator want to swap
        uint256 amountMax1;
        // minimum amount of token1 that creator want to swap
        uint256 amountMin1;
        // uint256 amountReserve1;
        // how many times a bid will decrease it's price
        uint32 times;
        // the timestamp in seconds the pool will open
        uint48 openAt;
        // the timestamp in seconds the pool will be closed
        uint48 closeAt;
        // the delay timestamp in seconds when bidders can claim
        uint48 claimAt;
        // whitelist merkle root
        bytes32 whitelistRoot;
    }

    struct Pool {
        // creator of the pool
        address creator;
        // address of sell token
        address token0;
        // address of buy token
        address token1;
        // total amount of token0
        uint256 amountTotal0;
        // maximum amount of token1 that creator want to swap
        uint256 amountMax1;
        // minimum amount of token1 that creator want to swap
        uint256 amountMin1;
        // uint256 amountReserve1;
        // how many times a bid will decrease it's price
        uint32 times;
        // the timestamp in seconds the pool will open
        uint48 openAt;
        // the timestamp in seconds the pool will be closed
        uint48 closeAt;
        // the delay timestamp in seconds when bidders can claim
        uint48 claimAt;
    }

    Pool[] public pools;

    // pool index => amount of token0 has been swap
    mapping(uint256 => uint256) public amountSwap0;
    // pool index => amount of token1 has been swap
    mapping(uint256 => uint256) public amountSwap1;
    // pool index => a flag that if creator is claimed the pool
    mapping(uint256 => bool) public creatorClaimed;

    mapping(uint256 => uint256) public lowestBidPrice;
    // bidder address => pool index => whether or not bidder claimed
    mapping(address => mapping(uint256 => bool)) public myClaimed;
    // bidder address => pool index => swapped amount of token0
    mapping(address => mapping(uint256 => uint256)) public myAmountSwap0;
    // bidder address => pool index => swapped amount of token1
    mapping(address => mapping(uint256 => uint256)) public myAmountSwap1;

    event Created(uint256 indexed index, address indexed sender, Pool pool, string name, bytes32 whitelistRoot);
    event Bid(uint256 indexed index, address indexed sender, uint256 amount0, uint256 amount1);
    event CreatorClaimed(
        uint256 indexed index,
        address indexed sender,
        uint256 unFilledAmount0,
        uint256 amount1,
        uint256 txFee
    );
    event UserClaimed(
        uint256 indexed index,
        address indexed sender,
        uint256 amount0,
        uint256 actualAmount1,
        uint256 unfilledAmount1
    );

    function initialize(uint256 _txFeeRatio, address _stakeContract, address _signer) public initializer {
        super.__BounceBase_init(_txFeeRatio, _stakeContract, _signer);
    }

    function create(CreateReq memory poolReq, uint256 expireAt, bytes memory signature) external nonReentrant {
        require(poolReq.amountTotal0 != 0, "amountTotal0 is zero");
        require(poolReq.amountMin1 != 0, "amountMax1 is zero");
        require(poolReq.amountMax1 != 0, "amountMin1 is zero");
        require(poolReq.amountMax1 > poolReq.amountMin1, "check: amountMax1 > amountMin1");
        require(poolReq.openAt >= block.timestamp, "invalid openAt");
        require(uint256(poolReq.closeAt).sub(poolReq.openAt) < 7 days, "invalid closeAt");
        require(poolReq.claimAt >= poolReq.closeAt, "invalid claimAt");
        require(poolReq.times != 0, "times is zero");
        require(bytes(poolReq.name).length <= 60, "name is too long");

        checkCreator(keccak256(abi.encode(poolReq, PoolType.DutchAuction)), expireAt, signature);

        uint256 index = pools.length;

        if (poolReq.whitelistRoot != bytes32(0)) {
            whitelistRootP[index] = poolReq.whitelistRoot;
        }

        // transfer amount of token0 to this contract
        transferAndCheck(poolReq.token0, msg.sender, poolReq.amountTotal0);

        Pool memory pool;
        pool.creator = msg.sender;
        pool.token0 = poolReq.token0;
        pool.token1 = poolReq.token1;
        pool.amountTotal0 = poolReq.amountTotal0;
        pool.amountMax1 = poolReq.amountMax1;
        pool.amountMin1 = poolReq.amountMin1;
        // pool.amountReserve1 = poolReq.amountReserve1;
        pool.times = poolReq.times;
        pool.openAt = poolReq.openAt;
        pool.closeAt = poolReq.closeAt;
        pool.claimAt = poolReq.claimAt;
        pools.push(pool);

        emit Created(index, msg.sender, pool, poolReq.name, whitelistRootP[index]);
    }

    function bid(
        uint256 index,
        uint256 amount0,
        bytes32[] memory proof
    ) external payable nonReentrant isPoolExist(index) isPoolNotClosed(index) {
        checkWhitelist(index, proof);
        Pool memory pool = pools[index];
        require(pool.openAt <= block.timestamp, "pool not open");
        require(amount0 != 0, "amount0 is zero");
        require(pool.amountTotal0 > amountSwap0[index], "swap amount is zero");

        // calculate amount1 and current price
        (uint256 amount1, uint256 curPrice) = queryAmount1AndCurrentPrice(index, amount0);

        if (lowestBidPrice[index] == 0 || lowestBidPrice[index] > curPrice) {
            lowestBidPrice[index] = curPrice;
        }

        address token1 = pool.token1;
        if (token1 == address(0)) {
            require(amount1 == msg.value, "invalid ETH amount");
        } else {
            IERC20Upgradeable(token1).safeTransferFrom(msg.sender, address(this), amount1);
        }

        _swap(msg.sender, index, amount0, amount1);

        emit Bid(index, msg.sender, amount0, amount1);
    }

    function creatorClaim(uint256 index) external nonReentrant isPoolExist(index) isPoolClosed(index) {
        Pool memory pool = pools[index];
        require(pool.creator == msg.sender, "invalid pool creator");
        require(!creatorClaimed[index], "creator claimed");
        creatorClaimed[index] = true;

        // send token1 to creator
        uint256 amount1 = lowestBidPrice[index].mul(amountSwap0[index]).div(1e18);
        uint256 txFee = amount1.mul(txFeeRatio).div(TX_FEE_DENOMINATOR);
        uint256 actualAmount1 = amount1.sub(txFee);
        if (pool.token1 == address(0)) {
            if (actualAmount1 > 0) {
                AddressUpgradeable.sendValue(payable(pool.creator), actualAmount1);
            }
            if (txFee > 0) {
                // deposit transaction fee to staking contract
                // solhint-disable-next-line avoid-low-level-calls
                (bool success, ) = stakeContract.call{value: txFee}(abi.encodeWithSignature("depositReward()"));
                if (!success) {
                    revert("Revert: depositReward()");
                }
            }
        } else {
            if (actualAmount1 > 0) {
                IERC20Upgradeable(pool.token1).safeTransfer(pool.creator, actualAmount1);
            }
            if (txFee > 0) {
                IERC20Upgradeable(pool.token1).safeTransfer(stakeContract, txFee);
            }
        }

        // calculate un-filled amount0
        uint256 unFilledAmount0 = pool.amountTotal0.sub(amountSwap0[index]);
        if (unFilledAmount0 > 0) {
            // transfer un-filled amount of token0 back to creator
            IERC20Upgradeable(pool.token0).safeTransfer(pool.creator, unFilledAmount0);
        }

        emit CreatorClaimed(index, msg.sender, unFilledAmount0, amount1, txFee);
    }

    function userClaim(uint256 index) external nonReentrant isPoolExist(index) isClaimReady(index) {
        require(!myClaimed[msg.sender][index], "bidder claimed");
        myClaimed[msg.sender][index] = true;

        Pool memory pool = pools[index];
        // send token0 to bidder
        if (myAmountSwap0[msg.sender][index] > 0) {
            IERC20Upgradeable(pool.token0).safeTransfer(msg.sender, myAmountSwap0[msg.sender][index]);
        }

        // send unfilled token1 to bidder
        uint256 actualAmount1 = lowestBidPrice[index].mul(myAmountSwap0[msg.sender][index]).div(1e18);
        uint256 unfilledAmount1 = myAmountSwap1[msg.sender][index].sub(actualAmount1);
        if (unfilledAmount1 > 0) {
            if (pool.token1 == address(0)) {
                AddressUpgradeable.sendValue(payable(msg.sender), unfilledAmount1);
            } else {
                IERC20Upgradeable(pool.token1).safeTransfer(msg.sender, unfilledAmount1);
            }
        }

        emit UserClaimed(index, msg.sender, myAmountSwap0[msg.sender][index], actualAmount1, unfilledAmount1);
    }

    function _swap(address sender, uint256 index, uint256 amount0, uint256 amount1) private {
        Pool memory pool = pools[index];
        uint256 _amount0 = pool.amountTotal0.sub(amountSwap0[index]);
        uint256 _amount1 = 0;
        uint256 _excessAmount1 = 0;

        // check if amount0 is exceeded
        if (_amount0 < amount0) {
            _amount1 = _amount0.mul(amount1).div(amount0);
            _excessAmount1 = amount1.sub(_amount1);
        } else {
            _amount0 = amount0;
            _amount1 = amount1;
        }
        myAmountSwap0[sender][index] = myAmountSwap0[sender][index].add(_amount0);
        myAmountSwap1[sender][index] = myAmountSwap1[sender][index].add(_amount1);
        amountSwap0[index] = amountSwap0[index].add(_amount0);
        amountSwap1[index] = amountSwap1[index].add(_amount1);

        // send excess amount of token1 back to sender
        if (_excessAmount1 > 0) {
            if (pool.token1 == address(0)) {
                AddressUpgradeable.sendValue(payable(sender), _excessAmount1);
            } else {
                IERC20Upgradeable(pool.token1).safeTransfer(sender, _excessAmount1);
            }
        }
    }

    function currentPrice(uint256 index) public view returns (uint256) {
        Pool memory pool = pools[index];
        uint256 _amount1 = pool.amountMin1;
        uint256 realTimes = uint256(pool.times).add(1);

        if (block.timestamp < pool.closeAt) {
            uint256 stepInSeconds = uint256(pool.closeAt).sub(pool.openAt).div(realTimes);
            if (stepInSeconds != 0) {
                uint256 remainingTimes = uint256(pool.closeAt).sub(block.timestamp).sub(1).div(stepInSeconds);
                if (remainingTimes != 0) {
                    _amount1 = pool.amountMax1.sub(pool.amountMin1).mul(remainingTimes).div(pool.times).add(
                        pool.amountMin1
                    );
                }
            }
        }

        return _amount1.mul(1e18).div(pool.amountTotal0);
    }

    function queryAmount1AndCurrentPrice(
        uint256 index,
        uint256 amount0
    ) public view returns (uint256 amount1, uint256 curPrice) {
        curPrice = currentPrice(index);
        amount1 = amount0.mul(curPrice).div(1e18);
    }

    function nextRoundInSeconds(uint256 index) public view returns (uint256) {
        Pool memory pool = pools[index];
        uint256 closeAt = uint256(pool.closeAt);
        if (block.timestamp >= closeAt) return 0;
        uint256 realTimes = uint256(pool.times).add(1);
        uint256 stepInSeconds = uint256(pool.closeAt).sub(pool.openAt).div(realTimes);
        if (stepInSeconds == 0) return 0;
        uint256 remainingTimes = closeAt.sub(block.timestamp).sub(1).div(stepInSeconds);

        return closeAt.sub(remainingTimes.mul(stepInSeconds)).sub(block.timestamp);
    }

    function getPoolCount() public view returns (uint256) {
        return pools.length;
    }

    modifier isPoolClosed(uint256 index) {
        require(pools[index].closeAt <= block.timestamp, "this pool is not closed");
        _;
    }

    modifier isPoolNotClosed(uint256 index) {
        require(pools[index].closeAt > block.timestamp, "this pool is closed");
        _;
    }

    modifier isClaimReady(uint256 index) {
        require(pools[index].claimAt <= block.timestamp, "claim not ready");
        _;
    }

    modifier isPoolExist(uint256 index) {
        require(index < pools.length, "this pool does not exist");
        _;
    }
}
