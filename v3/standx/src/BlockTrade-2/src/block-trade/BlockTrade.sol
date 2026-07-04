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

    BlockMapLib.BlockMap private blockInfoMap;
    OrderMapLib.OrderMap private orderInfoMap;
    UserOrderBufferLib.UserOrderBuffer private userOrderBuffer;
    BlockTradeLib.State private state;
    uint256[32] _reserved; // NOTE: reserved for future

    event NewBlock(
        address indexed caller,
        uint64 indexed blockId,
        BlockLib.Block blockInfo
    );
    event NewOrder(
        address indexed caller,
        uint64 indexed blockId,
        uint64 indexed orderId,
        uint256 makerRemainingQty,
        OrderLib.Order order
    );
    event ArchiveOrder(
        address indexed caller,
        uint64 indexed blockId,
        uint64 indexed orderId,
        uint256 makerRemainingQty,
        OrderLib.Order order
    );
    event FillBlock(
        uint64 indexed blockId,
        uint64 indexed makerOrderId,
        address indexed maker,
        BlockTradeLib.MatchedOrder[] matchedOrders
    );
    event AckOrder(
        uint64 indexed blockId,
        uint64 indexed orderId,
        OrderLib.Order order
    );
    event CloseBlock(
        address indexed caller,
        uint64 indexed blockId,
        uint64 indexed makerOrderId
    );
    event CloseOrder(
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
        _setState(initState);
    }

    function _setState(BlockTradeLib.State memory newState) internal {
        require(
            newState.messageSigner != address(0),
            BlockTradeLib.InvalidAddress()
        );
        require(
            newState.blockId == state.blockId,
            BlockTradeLib.InvalidBlockId()
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

    function pause() public onlyRole(DEFAULT_ADMIN_ROLE) nonReentrant {
        _pause();
    }

    function unpause() public onlyRole(DEFAULT_ADMIN_ROLE) nonReentrant {
        _unpause();
    }

    function _authorizeUpgrade(
        address newImplementation
    ) internal override onlyRole(DEFAULT_ADMIN_ROLE) {}

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

    function createMakerOrder(
        BlockTradeLib.Message calldata makerMsg,
        BlockTradeLib.MessageSignature calldata signature
    ) public whenNotPaused nonReentrant {
        require(
            _checkSignature(makerMsg, signature),
            BlockTradeLib.InvalidSignature()
        );
        _validateBaseMessage(makerMsg);
        require(makerMsg.blockId == 0, BlockTradeLib.InvalidBlockId());
        require(
            makerMsg.takerMinQty * BlockLib.BLOCK_MAX_TAKER >= makerMsg.qty &&
                makerMsg.takerMinQty <= makerMsg.qty,
            BlockTradeLib.InvalidMinQty()
        );
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
        emit NewBlock(msg.sender, blockInfo.blockId, blockInfo);
        emit NewOrder(
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
            BlockLib._isBlockOpen(blockInfo),
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

        // check qty
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
            takerMsg.orderId,
            takerMsg.qty,
            takerMsg.leverage,
            BlockTradeLib.Role.Taker,
            takerMsg.side,
            takerMsg.policy
        );
        UserOrderBufferLib._addOrder(
            userOrderBuffer,
            blockInfoMap,
            orderInfoMap,
            msg.sender,
            orderInfo.orderId
        );

        BlockLib._fillBlock(blockInfo, orderInfo);
        emit NewOrder(
            msg.sender,
            takerMsg.blockId,
            orderInfo.orderId,
            blockInfo.remainingQty,
            orderInfo
        );

        if (blockInfo.policy == BlockTradeLib.MatchPolicy.Flexible) {
            if (blockInfo.remainingQty == 0) {
                blockInfo.status = BlockTradeLib.BlockStatus.OnchainMatched;
            }
            emit FillBlock(
                blockInfo.blockId,
                blockInfo.makerOrderId,
                makerOrderInfo.caller,
                BlockLib.matchingOrders(orderInfoMap, orderInfo.orderId)
            );
        } else if (
            blockInfo.policy == BlockTradeLib.MatchPolicy.Full &&
            blockInfo.remainingQty == 0
        ) {
            blockInfo.status = BlockTradeLib.BlockStatus.OnchainMatched;
            emit FillBlock(
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
            emit ArchiveOrder(
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
                orderMsg.orderId,
                orderMsg.qty,
                orderMsg.leverage,
                BlockTradeLib.Role.Taker,
                orderMsg.side,
                orderMsg.policy
            );
            orderInfo.status = BlockTradeLib.OrderStatus.Archived;
            emit ArchiveOrder(
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
        // if it's maker order and new status is SystemCanceled, set block to halted
        if (
            orderInfo.role == BlockTradeLib.Role.Maker &&
            newStatus == BlockTradeLib.OrderStatus.SystemCanceled
        ) {
            BlockLib.Block storage blockInfo = BlockMapLib.get(
                blockInfoMap,
                blockId
            );
            require(
                blockInfo.status == BlockTradeLib.BlockStatus.Open,
                BlockTradeLib.InvalidStatus()
            );
            blockInfo.status = BlockTradeLib.BlockStatus.Halted;
        }
        // set new order status
        orderInfo.status = newStatus;
        emit AckOrder(blockId, orderId, orderInfo);
    }

    function _checkCloseOrderSignature(
        BlockTradeLib.CloseOrderMessage calldata closeMsg,
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
        bytes32 msgHash = keccak256(abi.encode(closeMsg, sig));
        return
            SignatureChecker.isValidSignatureNow(
                state.messageSigner,
                msgHash,
                originalSig
            );
    }

    function closeOrder(
        BlockTradeLib.CloseOrderMessage calldata closeMsg,
        BlockTradeLib.MessageSignature calldata signature
    ) public whenNotPaused nonReentrant {
        require(
            _checkCloseOrderSignature(closeMsg, signature),
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
            blockInfo.status == BlockTradeLib.BlockStatus.Open,
            BlockTradeLib.BlockIsNotOpen()
        );

        orderInfo.status = BlockTradeLib.OrderStatus.Closed;
        if (closeMsg.orderId == blockInfo.makerOrderId) {
            blockInfo.status = BlockTradeLib.BlockStatus.Closed;
            emit CloseBlock(msg.sender, orderInfo.blockId, closeMsg.orderId);
        } else {
            BlockLib._unfillBlock(blockInfo, orderInfo);
        }
        emit CloseOrder(
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

    function isBlockOpen(uint64 blockId) public view returns (bool) {
        BlockLib.Block storage blockInfo = BlockMapLib.get(
            blockInfoMap,
            blockId
        );
        return BlockLib._isBlockOpen(blockInfo);
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

    struct UserInfo {
        OrderLib.Order[] orders;
        BlockLib.Block[] blocks;
    }

    function getUserInfo(address caller) public view returns (UserInfo memory) {
        UserOrderBufferLib.UserOrder memory userOrder = UserOrderBufferLib
            .getUserOrders(userOrderBuffer, caller);

        uint256 count = 0;
        for (uint8 i = 0; i < UserOrderBufferLib.USER_ORDER_BUFFER_SIZE; i++) {
            if (userOrder.orderIdList[i] != 0) {
                count++;
            }
        }

        UserInfo memory info;
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
