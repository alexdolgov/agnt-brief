// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.4;

import "hardhat/console.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/utils/AddressUpgradeable.sol";
import "@openzeppelin/contracts/utils/Counters.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC721/utils/ERC721Holder.sol";
import "../../v1/tokens/Seedmon.sol";
import "../../v1/tokens/SeedmonAttribute.sol";
import "../../v1/utils/SafeMath.sol";
import "../../interface/ITreeFarm.sol";
import "../../external/pancake/interfaces/IPancakeRouter.sol";
import "../utils/PlatformRevenueBase.sol";

contract MarketPlace is OwnableUpgradeable, ERC721Holder, PlatformRevenueBase {
    event SellingOrderCreated(
        address indexed seller,
        uint256 tokenID,
        uint256 priceAmount,
        uint256 orderID
    );
    event SellingOrderCancelled(uint256 orderID);
    event SellingOrderSettled(uint256 orderID, address buyer);

    struct SellingOrder {
        address seller;
        uint256 tokenID;
        uint256 priceAmount;
    }

    using Counters for Counters.Counter;
    using AddressUpgradeable for address;
    using SafeMath for uint256;
    uint256 constant OPERATION_FEE_DIVIDER = 10000;

    uint256 public operateFeePer10K;
    IERC721 public seedmon;
    bool public isOpen;
    Counters.Counter private selleingOrderID;

    // Selling order map for only active
    mapping(uint256 => SellingOrder) public sellingOrderMap;

    function initialize(
        ITreeFarm _treeWallet,
        address _burnWallet,
        address _feeWallet,
        IERC20 _bnbAddress,
        IERC20 _busd,
        IERC721 _seedmon,
        uint256 _operateFeePer10K,
        IPancakeRouter _router
    ) external initializer {
        __Ownable_init();
        __PlatformRevenueBase_init(
            _treeWallet, 
            _burnWallet, 
            _feeWallet, 
            _bnbAddress, 
            _busd,
            _router
        );
        operateFeePer10K = _operateFeePer10K;
        seedmon = _seedmon;
        busd = _busd;
        isOpen = true;
    }

    /************************************************************************
    // ************************* External Function **************************
    // **********************************************************************/

    /// @notice player can put their NFT on market place
    /// @param sellingTokenID NFT ID related to sellingToken
    /// @param priceAmount amount of currency needed for trade
    function selling(
        uint256 sellingTokenID,
        uint256 priceAmount
    ) external {
        require(isOpen == true, "MarketPlace: sorry we are closed");
        require(
            !msg.sender.isContract(),
            "MarketPlace: not allow call by contract address"
        );

        selleingOrderID.increment();
        SellingOrder memory sellingOrder = SellingOrder({
            seller: msg.sender,
            tokenID: sellingTokenID,
            priceAmount: priceAmount
        });
        seedmon.safeTransferFrom(
            msg.sender,
            address(this),
            sellingTokenID
        );

        sellingOrderMap[selleingOrderID.current()] = sellingOrder;

        emit SellingOrderCreated(
            msg.sender,
            sellingTokenID,
            priceAmount,
            selleingOrderID.current()
        );
    }

    /// @param sellingOrderID order ID generated when selling order created
    function buy(uint256 sellingOrderID) external {
        require(isOpen == true, "MarketPlace: sorry we are closed");
        SellingOrder memory sellingOrder = sellingOrderMap[sellingOrderID];
        require(
            sellingOrder.seller != address(0),
            "MarketPlace: the order ID is invalid"
        );

        uint256 operateAmount = sellingOrder
            .priceAmount
            .mul(operateFeePer10K)
            .div(OPERATION_FEE_DIVIDER);
        uint256 sellerAmount = sellingOrder.priceAmount.sub(operateAmount);
        busd.transferFrom(
            msg.sender,
            sellingOrder.seller,
            sellerAmount
        );
        
        busd.transferFrom(
            msg.sender,
            address(this),
            operateAmount
        );
        distributeOperationFee(busd);
        seedmon.safeTransferFrom(
            address(this),
            msg.sender,
            sellingOrder.tokenID
        );

        delete sellingOrderMap[sellingOrderID];
        emit SellingOrderSettled(sellingOrderID, msg.sender);
    }

    /// @param sellingOrderID order ID generated when selling order created
    function cancel(uint256 sellingOrderID) external {
        
        SellingOrder memory sellingOrder = sellingOrderMap[sellingOrderID];
        require(
            sellingOrder.seller != address(0),
            "MarketPlace: not valid order to cancel"
        );
        require(
            sellingOrder.seller == msg.sender,
            "MarketPlace: Unauthorized"
        );

        seedmon.safeTransferFrom(
            address(this),
            sellingOrder.seller,
            sellingOrder.tokenID
        );

        delete sellingOrderMap[sellingOrderID];
        emit SellingOrderCancelled(sellingOrderID);
    }

    /************************************************************************
    // ************************* Owner Function *****************************
    // **********************************************************************/

    function setOperateFeePer10K(uint256 _operateFeePer10K) external onlyOwner {
        operateFeePer10K = _operateFeePer10K;
    }

    function setOpenMarket(bool _isOpen) external onlyOwner {
        isOpen = _isOpen;
    }

}
