// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.30;

import {IBlockTrade} from "../interface/IBlockTrade.sol";
import {BlockTradeLib} from "./BlockTradeLib.sol";
import {OrderLib, OrderMapLib} from "./OrderLib.sol";
import {BlockLib, BlockMapLib} from "./BlockLib.sol";
import {UserOrderBufferLib} from "./UserOrderBufferLib.sol";
import {
    SignatureChecker
} from "@openzeppelin/contracts/utils/cryptography/SignatureChecker.sol";
import {
    Initializable
} from "@openzeppelin-upgradeable/proxy/utils/Initializable.sol";
import {
    AccessControlEnumerableUpgradeable
} from "@openzeppelin-upgradeable/access/extensions/AccessControlEnumerableUpgradeable.sol";
import {
    PausableUpgradeable
} from "@openzeppelin-upgradeable/utils/PausableUpgradeable.sol";
import {
    ReentrancyGuardUpgradeable
} from "@openzeppelin-upgradeable/utils/ReentrancyGuardUpgradeable.sol";
import {UUPSUpgradeable} from "../proxy/UUPSUpgradeable.sol";

contract BlockTrade is
    IBlockTrade,
    Initializable,
    AccessControlEnumerableUpgradeable,
    PausableUpgradeable,
    ReentrancyGuardUpgradeable,
    UUPSUpgradeable
{
    bytes32 public constant VALIDATOR_ROLE = keccak256("VALIDATOR_ROLE");
    bytes32 public constant UPGRADER_ROLE = keccak256("UPGRADER_ROLE");
    bytes32 public constant PAUSER_ROLE = keccak256("PAUSER_ROLE");

    BlockMapLib.BlockMap private blockInfoMap;
    OrderMapLib.OrderMap private orderInfoMap;
    UserOrderBufferLib.UserOrderBuffer private userOrderBuffer;
    BlockTradeLib.State private state;
    uint256[32] _reserved;

    event StandXNewBlock(
        address indexed caller,
        uint64 indexed blockId,
        BlockLib.Block blockInfo
    );
    event StandXNewOrder(
        address indexed caller,
        uint64 indexed blockId,
        uint64 indexed orderId,
        uint256 makerRemainingQty,
        OrderLib.Order order
    );
    event StandXArchiveOrder(
        address indexed caller,
        uint64 indexed blockId,
        uint64 indexed orderId,
        uint256 makerRemainingQty,
        OrderLib.Order order
    );
    event StandXFillBlock(
        uint64 indexed blockId,
        uint64 indexed makerOrderId,
        address indexed maker,
        BlockTradeLib.MatchedOrder[] matchedOrders
    );
    event StandXAckOrder(
        uint64 indexed blockId,
        uint64 indexed orderId,
        OrderLib.Order order
    );
    event StandXCloseBlock(
        address indexed caller,
        uint64 indexed blockId,
        uint64 indexed makerOrderId
    );
    event StandXCloseOrder(
        address indexed caller,
        uint64 indexed blockId,
        uint64 indexed orderId,
        uint256 makerRemainingQty
    );

    constructor() {
        _disableInitializers();
    }

    function initialize(
        address admin,
        BlockTradeLib.State memory initState
    ) public initializer {
        __AccessControl_init();
        __Pausable_init();
        __UUPSUpgradeable_init();
        __ReentrancyGuard_init();

        require(admin != address(0), BlockTradeLib.InvalidAddress());
        _grantRole(DEFAULT_ADMIN_ROLE, admin);
        _grantRole(PAUSER_ROLE, admin);
        _grantRole(UPGRADER_ROLE, admin);
        _setState(initState);
    }

    function _setState(BlockTradeLib.State memory newState) internal {
        require(
            newState.messageSigner != address(0),
            BlockTradeLib.InvalidAddress()
        );
        _updateValidator(newState.validator);

        state = newState;
    }

    function setState(
        BlockTradeLib.State memory newState
    ) public onlyRole(DEFAULT_ADMIN_ROLE) whenPaused nonReentrant {
        _setState(newState);
    }

    function updateValidator(
        address newValidator
    ) public onlyRole(DEFAULT_ADMIN_ROLE) whenPaused nonReentrant {
        _updateValidator(newValidator);
    }

    function _updateValidator(address newValidator) internal {
        require(newValidator != address(0), BlockTradeLib.InvalidAddress());

        _revokeRole(VALIDATOR_ROLE, state.validator);
        _grantRole(VALIDATOR_ROLE, newValidator);
        state.validator = newValidator;
    }

    function pause() public onlyRole(PAUSER_ROLE) nonReentrant {
        _pause();
    }

    function unpause() public onlyRole(PAUSER_ROLE) nonReentrant {
        _unpause();
    }

    function _authorizeUpgrade(
        address newImplementation
    ) internal override onlyRole(UPGRADER_ROLE) {}

    function _nextBlockId() internal returns (uint64) {
        state.blockId++;
        return state.blockId;
    }

    function _checkSignature(
        BlockTradeLib.Message calldata message,
        BlockTradeLib.MessageSignature memory sig
    ) internal view returns (bool) {
        require(sig.expiredAt >= block.timestamp, BlockTradeLib.Timeout());
        require(sig.chainId == block.chainid, BlockTradeLib.InvalidChainId());
        require(sig.caller == msg.sender, BlockTradeLib.InvalidCaller());
        require(
            sig.contractAddress == address(this),
            BlockTradeLib.InvalidContract()
        );

        bytes memory originalSig = sig.signature;
        sig.signature = bytes("");
        bytes32 msgHash = keccak256(abi.encode(message, sig));
        return
            SignatureChecker.isValidSignatureNow(
                state.messageSigner,
                msgHash,
                originalSig
            );
    }

    function _isNotExpired(uint256 expiredAt) internal view returns (bool) {
        return expiredAt > block.timestamp;
    }

    function _isValidPrice(
        BlockTradeLib.PriceType priceType,
        uint256 price
    ) internal pure returns (bool) {
        return
            (priceType != BlockTradeLib.PriceType.Limit && price == 0) ||
            (priceType == BlockTradeLib.PriceType.Limit && price > 0);
    }

    function _validateBaseMessage(
        BlockTradeLib.Message calldata message
    ) internal view {
        require(
            !OrderMapLib.contains(orderInfoMap, message.orderId),
            BlockTradeLib.DuplicateOrderId()
        );
        require(message.orderId > 0, BlockTradeLib.InvalidOrderId());
        require(message.qty > 0, BlockTradeLib.InvalidQty());
        require(message.symbol != bytes32(0), BlockTradeLib.InvalidSymbol());
        require(
            message.leverage > 0 &&
                message.leverage <= BlockTradeLib.MAX_LEVERAGE,
            BlockTradeLib.InvalidLeverage()
        );
        require(
            _isValidPrice(message.priceType, message.price),
            BlockTradeLib.InvalidPrice()
        );
    }

    function _theOtherSide(
        BlockTradeLib.Side side
    ) internal pure returns (BlockTradeLib.Side theOtherSide) {
        if (side == BlockTradeLib.Side.Long) {
            return BlockTradeLib.Side.Short;
        } else if (side == BlockTradeLib.Side.Short) {
            return BlockTradeLib.Side.Long;
        }
        revert BlockTradeLib.InvalidSide();
    }

    function _validateOptionFee(
        BlockTradeLib.Message calldata message
    ) internal pure {
        if (message.policy == BlockTradeLib.MatchPolicy.IssueRight) {
            require(
                message.makerFee >= message.takerFee,
                BlockTradeLib.InvalidOptionFee()
            );
        } else if (message.policy == BlockTradeLib.MatchPolicy.SubscribeRight) {
            require(
                message.takerFee >= message.makerFee,
                BlockTradeLib.InvalidOptionFee()
            );
        }
    }

    function createMakerOrder(
        BlockTradeLib.Message calldata makerMsg,
        BlockTradeLib.MessageSignature calldata signature
    ) public whenNotPaused nonReentrant {
        require(
            _checkSignature(makerMsg, signature),
            BlockTradeLib.InvalidSignature()
        );
        _validateBaseMessage(makerMsg);
        _validateOptionFee(makerMsg);
        require(makerMsg.blockId == 0, BlockTradeLib.InvalidBlockId());
        if (makerMsg.policy == BlockTradeLib.MatchPolicy.SubscribeRight) {
            require(
                makerMsg.takerMinQty == makerMsg.qty,
                BlockTradeLib.InvalidMinQty()
            );
        } else {
            require(
                makerMsg.takerMinQty * BlockLib.BLOCK_MAX_TAKER >=
                    makerMsg.qty &&
                    makerMsg.takerMinQty <= makerMsg.qty,
                BlockTradeLib.InvalidMinQty()
            );
        }
        require(
            makerMsg.role == BlockTradeLib.Role.Maker,
            BlockTradeLib.InvalidRole()
        );
        require(_isNotExpired(makerMsg.expiredAt), BlockTradeLib.Timeout());
        uint64 blockId = _nextBlockId();
        (
            BlockLib.Block storage blockInfo,
            OrderLib.Order storage orderInfo
        ) = BlockLib._initBlock(blockInfoMap, orderInfoMap, blockId, makerMsg);
        UserOrderBufferLib._addOrder(
            userOrderBuffer,
            blockInfoMap,
            orderInfoMap,
            msg.sender,
            orderInfo.orderId
        );
        emit StandXNewBlock(msg.sender, blockInfo.blockId, blockInfo);
        emit StandXNewOrder(
            msg.sender,
            blockInfo.blockId,
            orderInfo.orderId,
            orderInfo.qty,
            orderInfo
        );
    }

    function createTakerOrder(
        BlockTradeLib.Message calldata takerMsg,
        BlockTradeLib.MessageSignature calldata signature
    ) public whenNotPaused nonReentrant {
        require(
            _checkSignature(takerMsg, signature),
            BlockTradeLib.InvalidSignature()
        );
        _validateBaseMessage(takerMsg);
        _validateOptionFee(takerMsg);
        require(takerMsg.blockId > 0, BlockTradeLib.InvalidBlockId());
        require(
            takerMsg.role == BlockTradeLib.Role.Taker,
            BlockTradeLib.InvalidRole()
        );
        BlockLib.Block storage blockInfo = BlockMapLib.get(
            blockInfoMap,
            takerMsg.blockId
        );
        require(
            takerMsg.symbol == blockInfo.symbol,
            BlockTradeLib.InvalidSymbol()
        );
        OrderLib.Order storage makerOrderInfo = OrderMapLib.get(
            orderInfoMap,
            blockInfo.makerOrderId
        );
        require(
            msg.sender != makerOrderInfo.caller,
            BlockTradeLib.MakerCannotBeTaker()
        );
        require(
            BlockLib._canBlockAcceptTaker(blockInfo),
            BlockTradeLib.BlockIsNotOpen()
        );
        require(
            takerMsg.side == _theOtherSide(makerOrderInfo.side),
            BlockTradeLib.InvalidSide()
        );
        require(
            takerMsg.priceType == blockInfo.priceType &&
                takerMsg.price == blockInfo.price,
            BlockTradeLib.InvalidPrice()
        );
        require(
            takerMsg.policy == blockInfo.policy,
            BlockTradeLib.InvalidPolicy()
        );

        uint256 remainingQty = blockInfo.remainingQty;
        require(
            takerMsg.qty >= blockInfo.takerMinQty,
            BlockTradeLib.FillQtyBelowMin()
        );
        require(
            takerMsg.qty <= remainingQty,
            BlockTradeLib.FillQtyExceedsRemaining()
        );
        require(
            takerMsg.qty == remainingQty ||
                remainingQty - takerMsg.qty >= blockInfo.takerMinQty,
            BlockTradeLib.FillQtyBelowMin()
        );

        OrderLib.Order storage orderInfo = OrderLib._initOrder(
            orderInfoMap,
            takerMsg.blockId,
            takerMsg
        );
        UserOrderBufferLib._addOrder(
            userOrderBuffer,
            blockInfoMap,
            orderInfoMap,
            msg.sender,
            orderInfo.orderId
        );

        BlockLib._fillBlock(blockInfo, orderInfo);

        bool fullyReserved = blockInfo.remainingQty == 0;

        if (fullyReserved) {
            blockInfo.status = BlockTradeLib.BlockStatus.OnchainMatched;
        }

        if (
            blockInfo.policy == BlockTradeLib.MatchPolicy.IssueRight ||
            blockInfo.policy == BlockTradeLib.MatchPolicy.SubscribeRight
        ) {
            orderInfo.status = BlockTradeLib.OrderStatus.Taken;
        } else if (
            blockInfo.policy == BlockTradeLib.MatchPolicy.Flexible ||
            (blockInfo.policy == BlockTradeLib.MatchPolicy.Full &&
                fullyReserved)
        ) {
            orderInfo.status = BlockTradeLib.OrderStatus.Matching;
        }

        emit StandXNewOrder(
            msg.sender,
            takerMsg.blockId,
            orderInfo.orderId,
            blockInfo.remainingQty,
            orderInfo
        );

        if (blockInfo.policy == BlockTradeLib.MatchPolicy.Flexible) {
            emit StandXFillBlock(
                blockInfo.blockId,
                blockInfo.makerOrderId,
                makerOrderInfo.caller,
                BlockLib.matchingOrders(orderInfoMap, orderInfo.orderId)
            );
        } else if (
            blockInfo.policy == BlockTradeLib.MatchPolicy.Full && fullyReserved
        ) {
            emit StandXFillBlock(
                blockInfo.blockId,
                blockInfo.makerOrderId,
                makerOrderInfo.caller,
                BlockLib.matchingOrders(orderInfoMap, blockInfo.takerOrderList)
            );
        }
    }

    function archiveOrder(
        BlockTradeLib.Message calldata orderMsg,
        BlockTradeLib.MessageSignature calldata signature
    ) public whenNotPaused nonReentrant {
        require(
            _checkSignature(orderMsg, signature),
            BlockTradeLib.InvalidSignature()
        );
        _validateBaseMessage(orderMsg);

        if (orderMsg.role == BlockTradeLib.Role.Maker) {
            require(orderMsg.blockId == 0, BlockTradeLib.InvalidBlockId());
            require(
                orderMsg.takerMinQty * BlockLib.BLOCK_MAX_TAKER >=
                    orderMsg.qty &&
                    orderMsg.takerMinQty <= orderMsg.qty,
                BlockTradeLib.InvalidMinQty()
            );

            uint64 blockId = _nextBlockId();
            (
                BlockLib.Block storage blockInfo,
                OrderLib.Order storage orderInfo
            ) = BlockLib._initBlock(
                    blockInfoMap,
                    orderInfoMap,
                    blockId,
                    orderMsg
                );
            blockInfo.status = BlockTradeLib.BlockStatus.Closed;
            orderInfo.status = BlockTradeLib.OrderStatus.Archived;
            emit StandXArchiveOrder(
                msg.sender,
                blockInfo.blockId,
                orderInfo.orderId,
                orderInfo.qty,
                orderInfo
            );
        } else if (orderMsg.role == BlockTradeLib.Role.Taker) {
            require(orderMsg.blockId > 0, BlockTradeLib.InvalidBlockId());
            BlockLib.Block storage blockInfo = BlockMapLib.get(
                blockInfoMap,
                orderMsg.blockId
            );
            require(
                blockInfo.status == BlockTradeLib.BlockStatus.Open,
                BlockTradeLib.BlockIsNotOpen()
            );
            require(
                orderMsg.symbol == blockInfo.symbol,
                BlockTradeLib.InvalidSymbol()
            );
            OrderLib.Order storage makerOrderInfo = OrderMapLib.get(
                orderInfoMap,
                blockInfo.makerOrderId
            );
            require(
                msg.sender != makerOrderInfo.caller,
                BlockTradeLib.MakerCannotBeTaker()
            );
            require(
                orderMsg.side == _theOtherSide(makerOrderInfo.side),
                BlockTradeLib.InvalidSide()
            );
            require(
                orderMsg.priceType == blockInfo.priceType &&
                    orderMsg.price == blockInfo.price,
                BlockTradeLib.InvalidPrice()
            );
            require(
                orderMsg.qty >= blockInfo.takerMinQty,
                BlockTradeLib.FillQtyBelowMin()
            );

            OrderLib.Order storage orderInfo = OrderLib._initOrder(
                orderInfoMap,
                orderMsg.blockId,
                orderMsg
            );
            orderInfo.status = BlockTradeLib.OrderStatus.Archived;
            emit StandXArchiveOrder(
                msg.sender,
                blockInfo.blockId,
                orderInfo.orderId,
                blockInfo.remainingQty,
                orderInfo
            );
        } else {
            revert BlockTradeLib.InvalidRole();
        }
    }

    function ackOrder(
        BlockTradeLib.OrderAckParams[] calldata ackParams
    ) public whenNotPaused onlyRole(VALIDATOR_ROLE) nonReentrant {
        require(
            ackParams.length > 0 && ackParams.length <= 1024,
            BlockTradeLib.InvalidBatchSize()
        );
        for (uint i = 0; i < ackParams.length; i++) {
            _ackOrder(
                ackParams[i].blockId,
                ackParams[i].orderId,
                ackParams[i].status
            );
        }
    }

    function _ackOrder(
        uint64 blockId,
        uint64 orderId,
        BlockTradeLib.OrderStatus newStatus
    ) private {
        OrderLib.Order storage orderInfo = OrderMapLib.get(
            orderInfoMap,
            orderId
        );
        require(orderInfo.blockId == blockId, BlockTradeLib.InvalidBlockId());
        require(
            OrderLib._isOrderActive(orderInfo),
            BlockTradeLib.InvalidStatus()
        );
        require(
            newStatus == BlockTradeLib.OrderStatus.Filled ||
                newStatus == BlockTradeLib.OrderStatus.Failed ||
                newStatus == BlockTradeLib.OrderStatus.SystemCanceled,
            BlockTradeLib.InvalidStatus()
        );
        if (
            orderInfo.role == BlockTradeLib.Role.Maker &&
            newStatus == BlockTradeLib.OrderStatus.SystemCanceled
        ) {
            BlockLib.Block storage blockInfo = BlockMapLib.get(
                blockInfoMap,
                blockId
            );
            require(
                BlockLib._isBlockStatusActive(blockInfo),
                BlockTradeLib.InvalidStatus()
            );
            blockInfo.status = BlockTradeLib.BlockStatus.Halted;
        }
        orderInfo.status = newStatus;
        emit StandXAckOrder(blockId, orderId, orderInfo);
    }

    function _checkOrderSignature(
        BlockTradeLib.OrderIdentifierMessage calldata orderMsg,
        BlockTradeLib.MessageSignature memory sig
    ) internal view returns (bool) {
        require(sig.expiredAt >= block.timestamp, BlockTradeLib.Timeout());
        require(sig.chainId == block.chainid, BlockTradeLib.InvalidChainId());
        require(sig.caller == msg.sender, BlockTradeLib.InvalidCaller());
        require(
            sig.contractAddress == address(this),
            BlockTradeLib.InvalidContract()
        );

        bytes memory originalSig = sig.signature;
        sig.signature = bytes("");
        bytes32 msgHash = keccak256(abi.encode(orderMsg, sig));
        return
            SignatureChecker.isValidSignatureNow(
                state.messageSigner,
                msgHash,
                originalSig
            );
    }

    function executeOrder(
        BlockTradeLib.OrderIdentifierMessage calldata executeMsg,
        BlockTradeLib.MessageSignature calldata signature
    ) public whenNotPaused nonReentrant {
        require(
            _checkOrderSignature(executeMsg, signature),
            BlockTradeLib.InvalidSignature()
        );

        OrderLib.Order storage orderInfo = OrderMapLib.get(
            orderInfoMap,
            executeMsg.orderId
        );
        require(
            orderInfo.blockId == executeMsg.blockId,
            BlockTradeLib.InvalidBlockId()
        );
        require(
            orderInfo.status == BlockTradeLib.OrderStatus.Taken,
            BlockTradeLib.InvalidStatus()
        );

        BlockLib.Block storage blockInfo = BlockMapLib.get(
            blockInfoMap,
            executeMsg.blockId
        );
        require(
            (blockInfo.policy == BlockTradeLib.MatchPolicy.IssueRight ||
                blockInfo.policy == BlockTradeLib.MatchPolicy.SubscribeRight),
            BlockTradeLib.CannotExecuteOption()
        );
        require(
            (blockInfo.status == BlockTradeLib.BlockStatus.Open ||
                blockInfo.status == BlockTradeLib.BlockStatus.OnchainMatched) &&
                blockInfo.expiredAt > block.timestamp,
            BlockTradeLib.BlockIsNotOpen()
        );

        OrderLib.Order storage makerOrderInfo = OrderMapLib.get(
            orderInfoMap,
            blockInfo.makerOrderId
        );
        address rightHolder = blockInfo.policy ==
            BlockTradeLib.MatchPolicy.IssueRight
            ? orderInfo.caller
            : makerOrderInfo.caller;
        require(msg.sender == rightHolder, BlockTradeLib.InvalidCaller());

        bool fullyExecuted = blockInfo.status ==
            BlockTradeLib.BlockStatus.OnchainMatched;
        if (
            fullyExecuted &&
            blockInfo.policy == BlockTradeLib.MatchPolicy.IssueRight
        ) {
            for (uint8 i = 0; i < BlockLib.BLOCK_MAX_TAKER; i++) {
                uint64 takerOrderId = blockInfo.takerOrderList[i];
                if (takerOrderId > 0 && takerOrderId != orderInfo.orderId) {
                    OrderLib.Order storage takerOrder = OrderMapLib.get(
                        orderInfoMap,
                        takerOrderId
                    );
                    if (takerOrder.status == BlockTradeLib.OrderStatus.Taken) {
                        fullyExecuted = false;
                        break;
                    }
                }
            }
        }
        if (fullyExecuted) {
            blockInfo.status = BlockTradeLib.BlockStatus.OnchainFullExecuted;
        }

        emit StandXFillBlock(
            blockInfo.blockId,
            blockInfo.makerOrderId,
            makerOrderInfo.caller,
            BlockLib.matchingOrders(orderInfoMap, orderInfo.orderId)
        );
    }

    function closeOrder(
        BlockTradeLib.OrderIdentifierMessage calldata closeMsg,
        BlockTradeLib.MessageSignature calldata signature
    ) public whenNotPaused nonReentrant {
        require(
            _checkOrderSignature(closeMsg, signature),
            BlockTradeLib.InvalidSignature()
        );
        OrderLib.Order storage orderInfo = OrderMapLib.get(
            orderInfoMap,
            closeMsg.orderId
        );
        require(
            orderInfo.blockId == closeMsg.blockId,
            BlockTradeLib.InvalidBlockId()
        );
        require(orderInfo.caller == msg.sender, BlockTradeLib.InvalidCaller());
        require(
            orderInfo.status == BlockTradeLib.OrderStatus.Open,
            BlockTradeLib.InvalidStatus()
        );
        BlockLib.Block storage blockInfo = BlockMapLib.get(
            blockInfoMap,
            closeMsg.blockId
        );
        require(
            BlockLib._canBlockAcceptTaker(blockInfo),
            BlockTradeLib.BlockIsNotOpen()
        );
        if (blockInfo.policy == BlockTradeLib.MatchPolicy.IssueRight) {
            for (uint8 i = 0; i < BlockLib.BLOCK_MAX_TAKER; i++) {
                uint64 takerOrderId = blockInfo.takerOrderList[i];
                if (takerOrderId > 0) {
                    OrderLib.Order storage takerOrder = OrderMapLib.get(
                        orderInfoMap,
                        takerOrderId
                    );
                    require(
                        !OrderLib._isOrderActive(orderInfo),
                        BlockTradeLib.CannotCloseOption()
                    );
                }
            }
        }
        orderInfo.status = BlockTradeLib.OrderStatus.Closed;
        if (closeMsg.orderId == blockInfo.makerOrderId) {
            blockInfo.status = BlockTradeLib.BlockStatus.Closed;
            emit StandXCloseBlock(
                msg.sender,
                orderInfo.blockId,
                closeMsg.orderId
            );
        } else {
            BlockLib._unfillBlock(blockInfo, orderInfo);
        }
        emit StandXCloseOrder(
            msg.sender,
            orderInfo.blockId,
            closeMsg.orderId,
            blockInfo.remainingQty
        );
    }

    function getBlockInfo(
        uint64 blockId
    ) public view returns (BlockLib.Block memory) {
        return BlockMapLib.get(blockInfoMap, blockId);
    }

    function canBlockAcceptTaker(uint64 blockId) public view returns (bool) {
        BlockLib.Block storage blockInfo = BlockMapLib.get(
            blockInfoMap,
            blockId
        );
        return BlockLib._canBlockAcceptTaker(blockInfo);
    }

    function isBlockActive(uint64 blockId) public view returns (bool) {
        BlockLib.Block storage blockInfo = BlockMapLib.get(
            blockInfoMap,
            blockId
        );
        return BlockLib._isBlockActive(blockInfo);
    }

    function getOrderInfo(
        uint64 orderId
    ) public view returns (OrderLib.Order memory) {
        return OrderMapLib.get(orderInfoMap, orderId);
    }

    function updateBlock(
        BlockLib.Block memory blockToUpdate
    ) public onlyRole(DEFAULT_ADMIN_ROLE) whenPaused nonReentrant {
        BlockLib._updateBlock(blockInfoMap, blockToUpdate);
    }

    function getState() public view returns (BlockTradeLib.State memory) {
        return state;
    }

    function getUserOrders(
        address caller
    ) public view returns (UserOrderBufferLib.UserOrder memory) {
        return UserOrderBufferLib.getUserOrders(userOrderBuffer, caller);
    }

    function getUserInfo(
        address caller
    ) public view returns (BlockLib.UserInfo memory) {
        UserOrderBufferLib.UserOrder memory userOrder = UserOrderBufferLib
            .getUserOrders(userOrderBuffer, caller);

        uint256 count = 0;
        for (uint8 i = 0; i < UserOrderBufferLib.USER_ORDER_BUFFER_SIZE; i++) {
            if (userOrder.orderIdList[i] != 0) {
                count++;
            }
        }

        BlockLib.UserInfo memory info;
        info.orders = new OrderLib.Order[](count);
        info.blocks = new BlockLib.Block[](count);

        uint256 index = 0;
        for (uint8 i = 0; i < UserOrderBufferLib.USER_ORDER_BUFFER_SIZE; i++) {
            uint64 orderId = userOrder.orderIdList[i];
            if (orderId != 0) {
                info.orders[index] = OrderMapLib.get(orderInfoMap, orderId);
                info.blocks[index] = BlockMapLib.get(
                    blockInfoMap,
                    info.orders[index].blockId
                );
                index++;
            }
        }

        return info;
    }
}
