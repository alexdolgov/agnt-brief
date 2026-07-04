// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC721/IERC721.sol";

//import "@openzeppelin/contracts/access/Ownable.sol";
//import "@openzeppelin/contracts/token/ERC721/utils/ERC721Holder.sol";
//import "@openzeppelin/contracts/token/ERC1155/utils/ERC1155Holder.sol";
//import "@openzeppelin/contracts/utils/Multicall.sol";
//import "@openzeppelin/contracts/utils/ReentrancyGuard.sol";

import "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC1155/utils/ERC1155HolderUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC721/utils/ERC721HolderUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol";

import "./lib/ConsiderationStructs.sol";
import "./lib/ConsiderationInterface.sol";
import "./lib/TransferHelper.sol";

struct AcceptOfferOrder {
    address accepter;
    bytes32 orderHash;
    address feeToken;
    uint256 feeAmount;
    uint256 brokerServiceFee;
}

struct StakeNftInput {
    address nftAddress;
    uint256 tokenId;
    bytes32 orderHash;
    address feeToken;
    uint256 feeAmount;
}

struct UnStakeNftInput {
    address nftAddress;
    uint256 tokenId;
}

contract MooarBroker is AccessControlUpgradeable, ERC721HolderUpgradeable, ERC1155HolderUpgradeable, ReentrancyGuardUpgradeable {

    bytes32 public constant FULFILLER = keccak256("FULFILLER");

    event Deposit(address indexed sender, uint256 amount);
    event Withdraw(address indexed recipient, uint256 amount);
    event ExecuteTransaction(address indexed to, uint256 value, bytes data);
    event NftStaked(address indexed nftAddress, uint256 indexed tokenId, address indexed accepter, bytes32 orderHash, address feeToken, uint256 feeAmount, uint256 brokerServiceFee);
    event NftUnStaked(address indexed nftAddress, uint256 indexed tokenId, address indexed accepter, bytes32 orderHash, address feeToken, uint256 feeAmount, uint256 brokerServiceFee);
    event NftFulfilledOrder(address indexed nftAddress, uint256 indexed tokenId, address indexed accepter, bytes32 orderHash, address feeToken, uint256 feeAmount, uint256 brokerServiceFee);

    address public mooarAddress;
    uint256 public brokerServiceFee;
    mapping(address => mapping(uint256 => AcceptOfferOrder)) private nftAcceptOfferOrders;

    function initialize() public initializer {
        __AccessControl_init();
        __ERC1155Holder_init();
        __ERC721Holder_init();
        __ReentrancyGuard_init();

        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
        _grantRole(FULFILLER, msg.sender);
        mooarAddress = 0xaaAAAaAa33D3520a2266CE508bc079FCFe82C8E3;
        brokerServiceFee = 0;
    }

    function supportsInterface(bytes4 interfaceId) public view
    override(AccessControlUpgradeable, ERC1155HolderUpgradeable) returns (bool)
    {
        return AccessControlUpgradeable.supportsInterface(interfaceId) ||
            ERC1155HolderUpgradeable.supportsInterface(interfaceId);
    }

    receive() external payable {
        emit Deposit(msg.sender, msg.value);
    }

    fallback() external payable {
        emit Deposit(msg.sender, msg.value);
    }

    function withdraw(uint256 _amount) external onlyRole(DEFAULT_ADMIN_ROLE) {
        require(address(this).balance >= _amount, "MooarBrokerError: Insufficient balance");
        TransferHelper.safeTransferETH(_msgSender(), _amount);
        emit Withdraw(_msgSender(), _amount);
    }

    function executeTransaction1(address to, bytes calldata data) external payable onlyRole(DEFAULT_ADMIN_ROLE) returns (bytes memory) {
        (bool success, bytes memory result) = to.call{value: msg.value}(data);
        require(success, "Transaction failed");
        emit ExecuteTransaction(to, msg.value, data);
        return result;
    }

    function executeTransaction2(address to, uint256 value, bytes calldata data) external onlyRole(DEFAULT_ADMIN_ROLE) returns (bytes memory) {
        (bool success, bytes memory result) = to.call{value: value}(data);
        require(success, "Transaction failed");
        emit ExecuteTransaction(to, value, data);
        return result;
    }

    function setBrokerServiceFee(uint256 _brokerServiceFee) external onlyRole(FULFILLER) {
        brokerServiceFee = _brokerServiceFee;
    }

    function setMooarAddress(address _mooarAddress) external onlyRole(DEFAULT_ADMIN_ROLE) {
        mooarAddress = _mooarAddress;
    }

    function getAcceptOfferOrder(
        address nftAddress,
        uint256 tokenId
    ) external view returns (AcceptOfferOrder memory) {
        return nftAcceptOfferOrders[nftAddress][tokenId];
    }

    function approveMooarErc20Allowance(address token) external onlyRole(FULFILLER) {
        IERC20(token).approve(mooarAddress, type(uint256).max);
    }

    function stakeNftForAcceptOffer(
        StakeNftInput[] calldata inputs
    ) external payable nonReentrant {
        address accepter = _msgSender();
        require(msg.value / inputs.length == brokerServiceFee, "MooarBrokerError: Invalid broker service fee");
        for (uint256 i = 0; i < inputs.length; i++) {
            address nftAddress = inputs[i].nftAddress;
            uint256 tokenId = inputs[i].tokenId;
            bytes32 orderHash = inputs[i].orderHash;
            address feeToken = inputs[i].feeToken;
            uint256 feeAmount = inputs[i].feeAmount;

            require(feeAmount > 0, "MooarBrokerError: Invalid fee amount");
            require(nftAcceptOfferOrders[nftAddress][tokenId].accepter == address(0), "MooarBrokerError: NFT already staked");
            nftAcceptOfferOrders[nftAddress][tokenId] = AcceptOfferOrder(accepter, orderHash, feeToken, feeAmount, brokerServiceFee);
            IERC721 nft = IERC721(nftAddress);
            require(nft.ownerOf(tokenId) == accepter, "MooarBrokerError: Not NFT owner");
            if (nft.isApprovedForAll(address(this), mooarAddress) == false) {
                nft.setApprovalForAll(mooarAddress, true);
            }
            if (feeToken != address(0)) {
                IERC20 token = IERC20(feeToken);
                if (token.allowance(address(this), mooarAddress) < feeAmount) {
                    token.approve(mooarAddress, type(uint256).max);
                }
            }

            IERC721(nftAddress).safeTransferFrom(accepter, address(this), tokenId);
            require(nft.ownerOf(tokenId) == address(this), "MooarBrokerError: Stake NFT failed");

            emit NftStaked(nftAddress, tokenId, accepter, orderHash, feeToken, feeAmount, brokerServiceFee);
        }
    }

    function unstakeNftForAcceptOffer(
        UnStakeNftInput[] calldata inputs
    ) external nonReentrant {
        for (uint256 i = 0; i < inputs.length; i++) {
            address nftAddress = inputs[i].nftAddress;
            uint256 tokenId = inputs[i].tokenId;
            require(nftAcceptOfferOrders[nftAddress][tokenId].accepter != address(0), "MooarBrokerError: NFT not staked");
            require(nftAcceptOfferOrders[nftAddress][tokenId].accepter == msg.sender || hasRole(FULFILLER, msg.sender), "MooarBrokerError: Not the accepter");
            IERC721(nftAddress).safeTransferFrom(address(this), nftAcceptOfferOrders[nftAddress][tokenId].accepter, tokenId);

            emit NftUnStaked(nftAddress, tokenId, nftAcceptOfferOrders[nftAddress][tokenId].accepter, nftAcceptOfferOrders[nftAddress][tokenId].orderHash, nftAcceptOfferOrders[nftAddress][tokenId].feeToken, nftAcceptOfferOrders[nftAddress][tokenId].feeAmount, brokerServiceFee);
            delete nftAcceptOfferOrders[nftAddress][tokenId];
        }
    }

    function fulfillAcceptOffer(
        address nftAddress,
        uint256 tokenId,
        address accepter,
        bytes32 orderHash,
        bytes calldata data
    ) external onlyRole(FULFILLER) nonReentrant {
        AcceptOfferOrder memory order = nftAcceptOfferOrders[nftAddress][tokenId];
        require(order.accepter == accepter && order.orderHash == orderHash && accepter != address(0), "MooarBrokerError: Invalid order");
        IERC721 nft = IERC721(nftAddress);
        require(nft.ownerOf(tokenId) == address(this), "MooarBrokerError: Not staked");

        IERC20 feeToken = IERC20(order.feeToken);
        uint256 beforeTradeBalance = 0;
        if (order.feeToken == address(0)) {
            beforeTradeBalance = address(this).balance;
        } else {
            beforeTradeBalance = feeToken.balanceOf(address(this));
        }

        (bool success, bytes memory result) = mooarAddress.call(data);
        require(success, _getRevertMsg(result, "MooarBrokerError: Fulfill failed. Reason: "));

        uint256 afterTradeBalance = beforeTradeBalance + order.feeAmount;
        if (order.feeToken == address(0)) {
            require(address(this).balance == afterTradeBalance, "MooarBrokerError: Invalid balance");
            TransferHelper.safeTransferETH(accepter, order.feeAmount);
        } else {
            require(feeToken.balanceOf(address(this)) == afterTradeBalance, "MooarBrokerError: Invalid balance");
            TransferHelper.safeTransfer(order.feeToken, accepter, order.feeAmount);
        }

        emit NftFulfilledOrder(nftAddress, tokenId, accepter, orderHash, order.feeToken, order.feeAmount, brokerServiceFee);
        delete nftAcceptOfferOrders[nftAddress][tokenId];
    }

    function _getRevertMsg(bytes memory _returnData, string memory prefix) internal pure returns (string memory) {
        // If the return data length is less than 68, the transaction failed without a revert message
        if (_returnData.length < 68) {
            return string(abi.encodePacked(prefix, "Transaction reverted silently"));
        }

        assembly {
        // Slice the sighash (first 4 bytes)
            _returnData := add(_returnData, 0x04)
        }

        // Decode the revert reason string from the return data
        string memory revertMsg = abi.decode(_returnData, (string));

        // Concatenate the prefix with the revert message
        return string(abi.encodePacked(prefix, revertMsg));
    }

//    function fulfillAdvancedOrder(
//        AdvancedOrder calldata order,
//        CriteriaResolver[] calldata resolver,
//        bytes32 fulfillerConduitKey,
//        address recipient
//    ) external payable onlyOwner returns (bool fulfilled) {
//        ConsiderationInterface mooar = ConsiderationInterface(0xaaAAAaAa33D3520a2266CE508bc079FCFe82C8E3);
//        bytes32 orderHash = mooar.getOrderHash(order);
//        return mooar.fulfillAdvancedOrder{value: msg.value}(
//            order,
//            resolver,
//            fulfillerConduitKey,
//            recipient
//        );
//    }
//    function fulfillAvailableAdvancedOrders(
//        AdvancedOrder[] calldata orders,
//        CriteriaResolver[] calldata resolver,
//        FulfillmentComponent[][] calldata components,
//        FulfillmentComponent[][] calldata components2,
//        bytes32 fulfillerConduitKey,
//        address recipient,
//        uint256 maximumFulfilled
//    ) external payable onlyOwner returns (
//        bool[] memory /* availableOrders */,
//        Execution[] memory /* executions */
//    ) {
//        // TODO: check approve and set approve
//        ConsiderationInterface mooar = ConsiderationInterface(0xaaAAAaAa33D3520a2266CE508bc079FCFe82C8E3);
//        return mooar.fulfillAvailableAdvancedOrders{value: msg.value}(
//            orders,
//            resolver,
//            components,
//            components2,
//            fulfillerConduitKey,
//            recipient,
//            maximumFulfilled
//        );
//    }
}
