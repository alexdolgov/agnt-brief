// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "./interfaces/INonfungiblePositionManager.sol";
import "./interfaces/ISquadV3Factory.sol";
import "./interfaces/ISquadV3Pool.sol";
import "./interfaces/IERC20.sol";
import "./libraries/LibLimitOrder.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/security/Pausable.sol";

contract SquadLimitOrder is Ownable, Pausable {
    mapping(bytes32 => LimitOrder) public orderInfo;
    INonfungiblePositionManager public immutable positionManager;
    ISquadV3Factory public immutable factory;

    address public operator;
    uint256 public operationalFee = 0.0002 ether;
    uint256 public constant PRECISION = 10000; // %0.01 hassasiyet için
    uint256 public slippageToleranceRate; 

    mapping(address => uint256) public deposits;
    mapping(address => bool) public pairWhitelist;
    event UpdateLimitOrderStatus(
        bytes32 indexed orderHash,
        address indexed owner,
        address indexed pairAddress,
        address token0,
        address token1,
        uint24 fee,
        int24 tickLower,
        int24 tickUpper,
        uint256 amount0,
        uint256 amount1,
        uint256 tokenId,
        uint8 status
    );

    event EmergencyWithdrawLP(
        bytes32 indexed orderHash,
        uint256 tokenId,
        address indexed owner
    );
    event UpdateUserBalance(
        address indexed sender,
        uint8 actionType,
        uint256 updateAmount,
        uint256 latestBalance
    );
    event PairWhitelistStatus(address indexed pairAddress, bool status);

    event SlippageToleranceRateUpdated(uint256 newRate);
    constructor(
        address nonfungiblePositionManagerAddress,
        address _factoryAddress,
        address _operator
    ) {
        positionManager = INonfungiblePositionManager(nonfungiblePositionManagerAddress);
        factory = ISquadV3Factory(_factoryAddress);
        operator = _operator;

        setSlippageToleranceRate(50);  // %0.5 varsayılan değer (50/10000)
    }

    function deposit() external payable {
        require(msg.value > 0, "Invalid amount");
        deposits[msg.sender] += msg.value;
        emit UpdateUserBalance(msg.sender, 1, msg.value, deposits[msg.sender]);
    }

    function makeLimitOrder(
        address token0,
        address token1,
        uint24 fee,
        int24 tickLower,
        int24 tickUpper,
        uint256 amount,
        uint256 deadline,
        bool zeroForOne
    ) external {
        require(amount != 0, "Invalid amount");
        address pairAddress = factory.getPool(token0, token1, fee);
        handleTokenTransfersAndApproval(token0, token1, amount, zeroForOne);
        (uint256 tokenId, uint128 liquidity) = mintPosition(
            token0,
            token1,
            fee,
            tickLower,
            tickUpper,
            amount,
            deadline,
            zeroForOne
        );
        bytes32 orderHash = createOrder(
            token0,
            token1,
            fee,
            tickLower,
            tickUpper,
            tokenId,
            liquidity,
            zeroForOne
        );

        uint256 amount0;
        uint256 amount1;
        if (zeroForOne) {
            amount0 = amount;
        } else {
            amount1 = amount;
        }

        emit UpdateLimitOrderStatus(
            orderHash,
            msg.sender,
            pairAddress,
            token0,
            token1,
            fee,
            tickLower,
            tickUpper,
            amount0,
            amount1,
            tokenId,
            1
        );
    }

    function makeSpreadOrder(
        address token0,
        address token1,
        uint24 fee,
        int24[] calldata tickLower,
        int24[] calldata tickUpper,
        uint256[] calldata amountForStep,
        uint256 deadline,
        bool zeroForOne
    ) external {
        address pairAddress = factory.getPool(token0, token1, fee);
        uint256 tickLowerCount = tickLower.length;
        require(
            tickLowerCount == tickUpper.length,
            "Invalid tick range count"
        );
        require(
            tickLowerCount == amountForStep.length,
            "Invalid amount count"
        );
        require(tickLowerCount > 0, "Invalid tick range count");
        uint256 totalAmount;
        for (uint256 i = 0; i < tickLowerCount; i++) {
            require(amountForStep[i] != 0, "Invalid amount");
            totalAmount += amountForStep[i];
        }
        handleTokenTransfersAndApproval(
            token0,
            token1,
            totalAmount,
            zeroForOne
        );
        uint256 amount0;
        uint256 amount1;
        for (uint256 i = 0; i < tickLowerCount; i++) {
            (uint256 tokenId, uint128 liquidity) = mintPosition(
                token0,
                token1,
                fee,
                tickLower[i],
                tickUpper[i],
                amountForStep[i],
                deadline,
                zeroForOne
            );
            bytes32 orderHash = createOrder(
                token0,
                token1,
                fee,
                tickLower[i],
                tickUpper[i],
                tokenId,
                liquidity,
                zeroForOne
            );

            if (zeroForOne) {
                amount0 = amountForStep[i];
            } else {
                amount1 = amountForStep[i];
            }

            emit UpdateLimitOrderStatus(
                orderHash,
                msg.sender,
                pairAddress,
                token0,
                token1,
                fee,
                tickLower[i],
                tickUpper[i],
                amount0,
                amount1,
                tokenId,
                1
            );
        }
    }

    function executeLimitOrder(bytes32 orderHash, bool spendFeeBalance, uint256 amount0Min, uint256 amount1Min, uint256 deadline) public returns (uint256, uint256) {
        require(msg.sender == operator, "Unauthorized execution");

        LimitOrder memory order = orderInfo[orderHash];
        address orderOwner = order.owner;
        uint256 gasAtStart = gasleft(); 

        (uint256 amount0, uint256 amount1) = reduceLiquidityAndCollect(
            orderHash,
            order.owner,
            amount0Min,
            amount1Min,
            deadline
        );

        emit UpdateLimitOrderStatus(
            orderHash,
            order.owner,
            address(0),
            order.token0,
            order.token1,
            order.fee,
            order.tickLower,
            order.tickUpper,
            amount0,
            amount1,
            order.tokenId,
            2
        );
        delete orderInfo[orderHash];

        if (spendFeeBalance) {
            uint256 gasUsed = gasAtStart - gasleft(); 
            uint256 gasPrice = tx.gasprice;
            uint256 gasCost = gasUsed * gasPrice; 

            uint256 depositAmount = deposits[orderOwner];
            require(
                depositAmount >= gasCost,
                "Insufficient deposit to cover gas cost"
            );
            uint256 spendAmount = gasCost + operationalFee;
            deposits[orderOwner] = depositAmount - spendAmount;

            emit UpdateUserBalance(
                orderOwner,
                3,
                spendAmount,
                deposits[orderOwner]
            );
        } else {
            uint256 gasUsed = gasAtStart - gasleft(); 
            uint256 gasPrice = tx.gasprice; 
            uint256 gasCost = gasUsed * gasPrice; 

            uint256 depositAmount = deposits[orderOwner];
            uint256 spendAmount = gasCost + operationalFee;

            emit UpdateUserBalance(orderOwner, 0, spendAmount, depositAmount);
        }

        return (amount0, amount1);
    }

    function cancelLimitOrder(bytes32 orderHash, uint256 amount0Min, uint256 amount1Min, uint256 deadline) public returns (uint256, uint256) {
        require(isAuthorized(orderHash), "Unauthorized execution");
        LimitOrder memory order = orderInfo[orderHash];

        (uint256 amount0, uint256 amount1) = reduceLiquidityAndCollect(
            orderHash,
            order.owner,
            amount0Min,
            amount1Min,
            deadline
        );

        emit UpdateLimitOrderStatus(
            orderHash,
            order.owner,
            address(0),
            order.token0,
            order.token1,
            order.fee,
            order.tickLower,
            order.tickUpper,
            amount0,
            amount1,
            order.tokenId,
            3 //cancellled
        );
        delete orderInfo[orderHash];

        return (amount0, amount1);
    }

    function cancelBatch(bytes32[] calldata orderHashes, uint256[] calldata amount0Min, uint256[] calldata amount1Min, uint256 deadline) external {
        uint256 length = orderHashes.length;
        for (uint256 i = 0; i < length; i++) {
            cancelLimitOrder(orderHashes[i], amount0Min[i], amount1Min[i], deadline);
        }
    }

    function emergencyWithdrawLP(bytes32 orderHash) external {
        require(isOwnerOrOrderOwner(orderHash), "Unauthorized access");
        _withdrawToken(orderHash);
    }

    function setOperator(address newOperator) external onlyOwner {
        operator = newOperator;
    }

    function handleTokenTransfersAndApproval(
        address token0,
        address token1,
        uint256 amount,
        bool zeroForOne
    ) internal {
        address tokenAddress = zeroForOne ? token0 : token1;
        IERC20(tokenAddress).transferFrom(msg.sender, address(this), amount);
        IERC20(tokenAddress).approve(address(positionManager), amount);
    }

    function mintPosition(
        address token0,
        address token1,
        uint24 fee,
        int24 tickLower,
        int24 tickUpper,
        uint256 amount,
        uint256 deadline,
        bool zeroForOne
    ) internal returns (uint256 tokenId, uint128 liquidity) {
        uint256 amount0Desired = zeroForOne ? amount : 0;
        uint256 amount1Desired = zeroForOne ? 0 : amount;
        
        uint256 amount0Min = amount0Desired * (PRECISION - slippageToleranceRate) / PRECISION;
        uint256 amount1Min = amount1Desired * (PRECISION - slippageToleranceRate) / PRECISION;
        uint256 amount0Added;
        uint256 amount1Added;

        INonfungiblePositionManager.MintParams
            memory params = INonfungiblePositionManager.MintParams({
                token0: token0,
                token1: token1,
                fee: fee,
                tickLower: tickLower,
                tickUpper: tickUpper,
                amount0Desired: amount0Desired,
                amount1Desired: amount1Desired,
                amount0Min: amount0Min,
                amount1Min: amount1Min,
                recipient: address(this),
                deadline: deadline
            });
        (tokenId, liquidity, amount0Added, amount1Added) = positionManager.mint(params);
        if (amount0Desired > amount0Added) {
            IERC20(token0).transfer(msg.sender, amount0Desired - amount0Added);
        }
        if (amount1Desired > amount1Added) {
            IERC20(token1).transfer(msg.sender, amount1Desired - amount1Added);
        }
        return (tokenId, liquidity);
    }

    function createOrder(
        address token0,
        address token1,
        uint24 fee,
        int24 tickLower,
        int24 tickUpper,
        uint256 tokenId,
        uint128 liquidity,
        bool zeroForOne
    ) internal returns (bytes32) {
        LimitOrder memory order = LimitOrder({
            owner: msg.sender,
            token0: token0,
            token1: token1,
            fee: fee,
            tickLower: tickLower,
            tickUpper: tickUpper,
            tokenId: tokenId,
            liquidity: liquidity,
            zeroForOne: zeroForOne,
            timestamp: block.timestamp
        });
        bytes32 orderHash = LibLimitOrder.hash(order);
        orderInfo[orderHash] = order;
        return orderHash;
    }

    function isAuthorized(bytes32 orderHash) internal view returns (bool) {
        LimitOrder memory order = orderInfo[orderHash];
        return
            msg.sender == operator ||
            msg.sender == order.owner;
    }

    function isOwnerOrOrderOwner(
        bytes32 orderHash
    ) internal view returns (bool) {
        LimitOrder memory order = orderInfo[orderHash];
        return msg.sender == owner() || msg.sender == order.owner;
    }

    function canBeExecuted(
        bytes32 orderHash
    ) public view returns (bool execType) {
        execType = false;
        LimitOrder memory order = orderInfo[orderHash];
        address poolAddress = factory.getPool(
            order.token0,
            order.token1,
            order.fee
        );
        ISquadV3Pool pool = ISquadV3Pool(poolAddress);
        (, int24 tick, , , , , ) = pool.slot0();

        if (
            (!order.zeroForOne && tick < order.tickLower) ||
            (order.zeroForOne && tick > order.tickUpper)
        ) {
            execType = true;
        }

        return execType;
    }

    function getOrderExecutionTick(
        bytes32 orderHash
    ) public view returns (int24 execTick) {
        LimitOrder memory order = orderInfo[orderHash];
        if (order.zeroForOne) {
            execTick = order.tickUpper;
        } else {
            execTick = order.tickLower;
        }
    }

    function _withdrawToken(bytes32 orderHash) internal {
        LimitOrder memory order = orderInfo[orderHash];
        positionManager.transferFrom(address(this), order.owner, order.tokenId);
        emit UpdateLimitOrderStatus(
            orderHash,
            order.owner,
            address(0),
            order.token0,
            order.token1,
            order.fee,
            order.tickLower,
            order.tickUpper,
            0,
            0,
            order.tokenId,
            3
        );
        delete orderInfo[orderHash];
        emit EmergencyWithdrawLP(orderHash, order.tokenId, order.owner);
    }

    function reduceLiquidityAndCollect(
        bytes32 orderHash,
        address recipient,
        uint256 amount0Min,
        uint256 amount1Min,
        uint256 deadline
    ) internal returns (uint256 amount0, uint256 amount1) {
        LimitOrder memory order = orderInfo[orderHash];
        INonfungiblePositionManager.DecreaseLiquidityParams
            memory decreaseParams = INonfungiblePositionManager
                .DecreaseLiquidityParams({
                    tokenId: order.tokenId,
                    liquidity: order.liquidity,
                    amount0Min: amount0Min,
                    amount1Min: amount1Min,
                    deadline: deadline
                });
        (amount0, amount1) = positionManager.decreaseLiquidity(decreaseParams);
        INonfungiblePositionManager.CollectParams
            memory collectParams = INonfungiblePositionManager.CollectParams({
                tokenId: order.tokenId,
                recipient: recipient,
                amount0Max: type(uint128).max,
                amount1Max: type(uint128).max
            });
        positionManager.collect(collectParams);
        return (amount0, amount1);
    }

    function pause() external onlyOwner {
        _pause();
    }

    function unpause() external onlyOwner {
        _unpause();
    }

    function setOperationalFee(uint256 fee) external onlyOwner {
        operationalFee = fee;
    }

    function userWithdrawFeeBalance() external {
        uint256 depositAmount = deposits[msg.sender];
        require(depositAmount > 0, "No balance to withdraw");
        deposits[msg.sender] = 0;
        payable(msg.sender).transfer(depositAmount);
        emit UpdateUserBalance(msg.sender, 2, depositAmount, 0);
    }

    function withdrawToken(address tokenAddress) external onlyOwner {
        IERC20 token = IERC20(tokenAddress);
        uint256 balance = token.balanceOf(address(this));
        token.transfer(owner(), balance);
    }

    function withdrawETH() external onlyOwner {
        uint256 balance = address(this).balance;
        payable(owner()).transfer(balance);
    }

    function updatePairWhitelist(
        address pairAddress,
        bool status
    ) external onlyOwner {
        pairWhitelist[pairAddress] = status;
        emit PairWhitelistStatus(pairAddress, status);
    }

    function updateOwner(address newOwner) external onlyOwner {
        transferOwnership(newOwner);
    }

    function viewOrder(
        bytes32 orderHash
    ) external view returns (LimitOrder memory) {
        return orderInfo[orderHash];
    }

    function viewUserBalance(address user) external view returns (uint256) {
        return deposits[user];
    }

    function viewOrderOwner(
        bytes32 orderHash
    ) external view returns (address owner) {
        return orderInfo[orderHash].owner;
    }

    function viewOperator() external view returns (address) {
        return operator;
    }

    function viewOperationalFee() external view returns (uint256) {
        return operationalFee;
    }

    function setSlippageToleranceRate(uint256 newRate) public onlyOwner {
        require(newRate < PRECISION, "Rate must be less than PRECISION");
        slippageToleranceRate = newRate;

        emit SlippageToleranceRateUpdated(newRate);
    }
}
