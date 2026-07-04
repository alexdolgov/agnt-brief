// SPDX-License-Identifier: MIT
pragma solidity 0.8.22;

import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {IRouterClient} from "@chainlink/contracts-ccip/src/v0.8/ccip/interfaces/IRouterClient.sol";
import {Client} from "@chainlink/contracts-ccip/src/v0.8/ccip/libraries/Client.sol";
import {CCIPReceiver} from "@chainlink/contracts-ccip/src/v0.8/ccip/applications/CCIPReceiver.sol";
import "@unification-com/xfund-router/contracts/lib/ConsumerBase.sol";
import "./interfaces/ILandRegistry.sol";
import "./interfaces/ILandAuction.sol";

/**
 * @title LandSaleETH
 * @dev Implementation of land sale system on Ethereum with CCIP integration.
 * Supports both ETH and SHIB payments with oracle-based price conversion.
 */
contract LandSaleETH is
    Initializable,
    OwnableUpgradeable,
    ReentrancyGuardUpgradeable,
    UUPSUpgradeable,
    ConsumerBase,
    CCIPReceiver
{
    // Constants
    uint32 constant clearLow = 0xffff0000;
    uint32 constant clearHigh = 0x0000ffff;
    uint32 constant factor = 0x10000;

    int16 public constant xLow = -96;
    int16 public constant yLow = -99;
    int16 public constant xHigh = 96;
    int16 public constant yHigh = 99;

    // Custom errors
    error NotEnoughBalance(uint256 currentBalance, uint256 calculatedFees);
    error InvalidAddress();
    error NoMessageToSend();
    error MessageSendFailed();

    // Structs
    enum Stage {
        Default,
        PublicSale
    }

    struct Purchase {
        uint256 amount;
        address buyer;
        bool isShib;
    }

    struct MintStatusUpdate {
        uint256 id;
        bool status;
    }

    // State variables
    ILandRegistry public landRegistry;
    ILandAuction public auctionV1;
    Stage public currentStage;
    bool public multiMintEnabled;
    IERC20 public SHIB;
    uint256 public ethToShib;
    address public moderator;

    // CCIP configuration
    uint64 public shibariumChainSelector;
    address public shibariumSaleContract;

    // Storage
    mapping(uint256 => bool) public mintedOnShibarium;
    mapping(int16 => mapping(int16 => Purchase)) public purchases;
    mapping(address => uint32[]) private _allPurchasesOf;

    // Events
    event StageSet(Stage stage);
    event MultiMintToggled(bool newValue);
    event LandBought(
        address indexed user,
        uint32 indexed encXY,
        int16 x,
        int16 y,
        uint256 price,
        bool isShib,
        uint256 time
    );
    event MintStatusUpdated(uint256 indexed id, bool isMinted);

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(
        ILandRegistry _landRegistry,
        ILandAuction _auctionV1,
        IERC20 _shib,
        uint64 _shibariumChainSelector,
        IERC20_Ex _xfund,
        IRouter _router,
        address _ccipRouter
    ) public initializer {
        __Ownable_init(msg.sender);
        __ReentrancyGuard_init();
        __UUPSUpgradeable_init();

        moderator = msg.sender;

        i_ccipRouter = _ccipRouter;
        landRegistry = _landRegistry;
        auctionV1 = _auctionV1;
        SHIB = _shib;
        shibariumChainSelector = _shibariumChainSelector;
        xFUND = _xfund;
        router = _router;
    }

    // Modifiers
    modifier onlyValid(int16 x, int16 y) {
        require(xLow <= x && x <= xHigh, "ERR_X_OUT_OF_RANGE");
        require(yLow <= y && y <= yHigh, "ERR_Y_OUT_OF_RANGE");
        _;
    }

    modifier onlyStage(Stage s) {
        require(currentStage == s, "ERR_SALE_NOT_ACTIVE");
        _;
    }

    modifier onlyModerator() {
        require(msg.sender == moderator, "ERR_ONLY_MODERATOR");
        _;
    }

    // Public view functions
    function getCategory(int16 x, int16 y) public view returns (int8) {
        return auctionV1.getCategory(x, y);
    }

    function getPriceInEth(int16 x, int16 y) public view returns (uint256) {
        return auctionV1.getReservePrice(x, y);
    }

    function getPriceInShib(int16 x, int16 y) public view returns (uint256) {
        uint256 ethPrice = getPriceInEth(x, y);
        uint256 shibPrice = (ethToShib * ethPrice) / 1 ether;
        require(shibPrice > 0, "ERR_INVALID_PRICE_CONVERSION");
        return shibPrice;
    }

    function getMessageFee(
        MintStatusUpdate[] memory updates
    ) public view returns (uint256) {
        bytes memory message = abi.encode(updates);
        Client.EVM2AnyMessage memory evm2AnyMessage = _buildCCIPMessage(
            message,
            address(0)
        );

        IRouterClient router = IRouterClient(this.getRouter());
        return router.getFee(shibariumChainSelector, evm2AnyMessage);
    }

    // Mint functions
    function mintPublic(
        int16 x,
        int16 y
    ) external payable onlyStage(Stage.PublicSale) nonReentrant {
        uint32 encXY = _encodeXY(x, y);
        require(!landRegistry.exists(uint256(encXY)), "ERR_ALREADY_MINTED");
        require(!mintedOnShibarium[encXY], "ERR_MINTED_ON_SHIBARIUM");

        (uint256 amount, address bidder) = auctionV1.getCurrentBid(x, y);
        require(bidder == address(0), "ERR_HAS_WINNING_BIDDER");

        uint256 price = getPriceInEth(x, y);
        Purchase storage purchase = purchases[x][y];
        require(purchase.amount == 0, "ERR_ALREADY_PURCHASED");

        // Prepare single update
        MintStatusUpdate[] memory updates = new MintStatusUpdate[](1);
        updates[0] = MintStatusUpdate({id: encXY, status: true});

        uint256 messageFee = getMessageFee(updates);
        require(msg.value >= price + messageFee, "ERR_INSUFFICIENT_PAYMENT");

        _processPurchase(x, y, price, false);
        _sendMintStatus(updates);

        uint256 excess = msg.value - (price + messageFee);
        if (excess > 0) {
            payable(msg.sender).transfer(excess);
        }
    }

    function mintPublicMulti(
        int16[] calldata xs,
        int16[] calldata ys
    ) external payable onlyStage(Stage.PublicSale) nonReentrant {
        require(multiMintEnabled, "ERR_MULTI_MINT_DISABLED");
        uint256 length = xs.length;
        require(length == ys.length, "ERR_LENGTH_MISMATCH");

        uint256 totalPrice = 0;
        MintStatusUpdate[] memory updates = new MintStatusUpdate[](length);

        // Validate and calculate total price
        for (uint256 i = 0; i < length; i++) {
            uint32 encXY = _encodeXY(xs[i], ys[i]);
            require(!landRegistry.exists(uint256(encXY)), "ERR_ALREADY_MINTED");
            require(!mintedOnShibarium[encXY], "ERR_MINTED_ON_SHIBARIUM");

            (uint256 amount, address bidder) = auctionV1.getCurrentBid(
                xs[i],
                ys[i]
            );
            require(bidder == address(0), "ERR_HAS_WINNING_BIDDER");

            Purchase storage purchase = purchases[xs[i]][ys[i]];
            require(purchase.amount == 0, "ERR_ALREADY_PURCHASED");

            updates[i] = MintStatusUpdate({id: encXY, status: true});

            totalPrice += getPriceInEth(xs[i], ys[i]);
        }

        uint256 messageFee = getMessageFee(updates);
        require(
            msg.value >= totalPrice + messageFee,
            "ERR_INSUFFICIENT_PAYMENT"
        );

        // Process purchases
        for (uint256 i = 0; i < length; i++) {
            uint256 price = getPriceInEth(xs[i], ys[i]);
            _processPurchase(xs[i], ys[i], price, false);
        }

        _sendMintStatus(updates);

        uint256 excess = msg.value - (totalPrice + messageFee);
        if (excess > 0) {
            payable(msg.sender).transfer(excess);
        }
    }

    function mintPublicWithShib(
        int16 x,
        int16 y
    ) external payable onlyStage(Stage.PublicSale) nonReentrant {
        uint32 encXY = _encodeXY(x, y);
        require(!landRegistry.exists(uint256(encXY)), "ERR_ALREADY_MINTED");
        require(!mintedOnShibarium[encXY], "ERR_MINTED_ON_SHIBARIUM");

        (uint256 amount, address bidder) = auctionV1.getCurrentBid(x, y);
        require(bidder == address(0), "ERR_HAS_WINNING_BIDDER");

        uint256 price = getPriceInShib(x, y);
        Purchase storage purchase = purchases[x][y];
        require(purchase.amount == 0, "ERR_ALREADY_PURCHASED");

        // Prepare single update
        MintStatusUpdate[] memory updates = new MintStatusUpdate[](1);
        updates[0] = MintStatusUpdate({id: encXY, status: true});

        uint256 messageFee = getMessageFee(updates);
        require(msg.value >= messageFee, "ERR_INSUFFICIENT_PAYMENT");

        SHIB.transferFrom(msg.sender, address(this), price);
        _processPurchase(x, y, price, true);
        _sendMintStatus(updates);

        uint256 excess = msg.value - messageFee;
        if (excess > 0) {
            payable(msg.sender).transfer(excess);
        }
    }

    function mintPublicWithShibMulti(
        int16[] calldata xs,
        int16[] calldata ys
    ) external payable onlyStage(Stage.PublicSale) nonReentrant {
        require(multiMintEnabled, "ERR_MULTI_MINT_DISABLED");
        uint256 length = xs.length;
        require(length == ys.length, "ERR_LENGTH_MISMATCH");

        uint256 totalShibPrice = 0;
        MintStatusUpdate[] memory updates = new MintStatusUpdate[](length);

        // Calculate total price and validate
        for (uint256 i = 0; i < length; i++) {
            uint32 encXY = _encodeXY(xs[i], ys[i]);
            require(!landRegistry.exists(uint256(encXY)), "ERR_ALREADY_MINTED");
            require(!mintedOnShibarium[encXY], "ERR_MINTED_ON_SHIBARIUM");

            (uint256 amount, address bidder) = auctionV1.getCurrentBid(
                xs[i],
                ys[i]
            );
            require(bidder == address(0), "ERR_HAS_WINNING_BIDDER");

            Purchase storage purchase = purchases[xs[i]][ys[i]];
            require(purchase.amount == 0, "ERR_ALREADY_PURCHASED");

            updates[i] = MintStatusUpdate({id: encXY, status: true});

            totalShibPrice += getPriceInShib(xs[i], ys[i]);
        }

        uint256 messageFee = getMessageFee(updates);
        require(msg.value >= messageFee, "ERR_INSUFFICIENT_PAYMENT");

        SHIB.transferFrom(msg.sender, address(this), totalShibPrice);

        // Process purchases
        for (uint256 i = 0; i < length; i++) {
            uint256 price = getPriceInShib(xs[i], ys[i]);
            _processPurchase(xs[i], ys[i], price, true);
        }

        _sendMintStatus(updates);

        uint256 excess = msg.value - messageFee;
        if (excess > 0) {
            payable(msg.sender).transfer(excess);
        }
    }

    function mintWinningBid(
        int16[] calldata xs,
        int16[] calldata ys
    ) external payable nonReentrant {
        uint256 length = xs.length;
        require(length == ys.length, "ERR_LENGTH_MISMATCH");

        MintStatusUpdate[] memory updates = new MintStatusUpdate[](length);

        for (uint256 i = 0; i < length; i++) {
            uint32 encXY = _encodeXY(xs[i], ys[i]);
            require(!landRegistry.exists(uint256(encXY)), "ERR_ALREADY_MINTED");
            require(!mintedOnShibarium[encXY], "ERR_MINTED_ON_SHIBARIUM");

            (uint256 amount, address bidder) = auctionV1.getCurrentBid(
                xs[i],
                ys[i]
            );
            require(bidder == msg.sender, "ERR_NOT_WINNING_BIDDER");

            updates[i] = MintStatusUpdate({id: encXY, status: true});
        }

        uint256 messageFee = getMessageFee(updates);
        require(msg.value >= messageFee, "ERR_INSUFFICIENT_MESSAGE_FEE");

        // Process all mints
        for (uint256 i = 0; i < length; i++) {
            uint32 encXY = _encodeXY(xs[i], ys[i]);

            // Record purchase with 0 amount since payment was made during bidding
            Purchase storage purchase = purchases[xs[i]][ys[i]];
            purchase.amount = 0;
            purchase.buyer = msg.sender;
            purchase.isShib = false;

            _allPurchasesOf[msg.sender].push(encXY);

            // Mint the NFT
            landRegistry.mint(msg.sender, xs[i], ys[i]);

            emit LandBought(
                msg.sender,
                encXY,
                xs[i],
                ys[i],
                0, // Amount is 0 as payment was made during bidding
                false,
                block.timestamp
            );
        }

        _sendMintStatus(updates);

        uint256 excess = msg.value - messageFee;
        if (excess > 0) {
            payable(msg.sender).transfer(excess);
        }
    }

    // Admin functions
    function setShibariumSaleContract(
        address _saleContract
    ) external onlyOwner {
        if (_saleContract == address(0)) revert InvalidAddress();
        shibariumSaleContract = _saleContract;
    }

    function setStage(Stage stage) external onlyOwner {
        currentStage = stage;
        emit StageSet(stage);
    }

    function setLandRegistry(ILandRegistry _landRegistry) external onlyOwner {
        if (address(_landRegistry) == address(0)) revert InvalidAddress();
        landRegistry = _landRegistry;
    }

    function setAuctionV1(ILandAuction _auctionV1) external onlyOwner {
        if (address(_auctionV1) == address(0)) revert InvalidAddress();
        auctionV1 = _auctionV1;
    }

    function setMultiMint(bool enabled) external onlyOwner {
        require(multiMintEnabled != enabled, "ERR_NO_CHANGE");
        multiMintEnabled = enabled;
        emit MultiMintToggled(enabled);
    }

    function setModerator(address _moderator) external onlyOwner {
        require(_moderator != address(0), "ERR_ZERO_ADDRESS");
        moderator = _moderator;
    }

    // Withdrawal functions
    function withdraw() external onlyOwner {
        uint256 balance = address(this).balance;
        require(balance > 0, "ERR_NO_BALANCE");
        payable(owner()).transfer(balance);
    }

    function withdrawXFund() external onlyOwner {
        uint256 balance = xFUND.balanceOf(address(this));
        require(balance > 0, "ERR_NO_BALANCE");
        xFUND.transfer(owner(), balance);
    }

    function withdrawShib() external onlyOwner {
        SHIB.transfer(owner(), SHIB.balanceOf(address(this)));
    }

    // Internal functions
    function _processPurchase(
        int16 x,
        int16 y,
        uint256 amount,
        bool isShib
    ) internal {
        Purchase storage purchase = purchases[x][y];
        purchase.amount = amount;
        purchase.buyer = msg.sender;
        purchase.isShib = isShib;

        uint32 encXY = _encodeXY(x, y);
        _allPurchasesOf[msg.sender].push(encXY);

        landRegistry.mint(msg.sender, x, y);

        emit LandBought(
            msg.sender,
            encXY,
            x,
            y,
            amount,
            isShib,
            block.timestamp
        );
    }

    function _sendMintStatus(MintStatusUpdate[] memory updates) internal {
        uint256 fees = getMessageFee(updates);
        if (fees > msg.value) revert NotEnoughBalance(msg.value, fees);

        bytes memory message = abi.encode(updates);
        Client.EVM2AnyMessage memory evm2AnyMessage = _buildCCIPMessage(
            message,
            address(0)
        );

        IRouterClient router = IRouterClient(this.getRouter());
        router.ccipSend{value: fees}(shibariumChainSelector, evm2AnyMessage);
    }

    function _buildCCIPMessage(
        bytes memory _message,
        address _feeTokenAddress
    ) internal view returns (Client.EVM2AnyMessage memory) {
        return
            Client.EVM2AnyMessage({
                receiver: abi.encode(shibariumSaleContract),
                data: _message,
                tokenAmounts: new Client.EVMTokenAmount[](0),
                extraArgs: Client._argsToBytes(
                    Client.EVMExtraArgsV2({
                        gasLimit: 500_000,
                        allowOutOfOrderExecution: true
                    })
                ),
                feeToken: _feeTokenAddress
            });
    }

    function _ccipReceive(
        Client.Any2EVMMessage memory message
    ) internal override {
        require(
            message.sourceChainSelector == shibariumChainSelector,
            "Wrong chain selector"
        );
        require(
            abi.decode(message.sender, (address)) == shibariumSaleContract,
            "Invalid sender"
        );

        MintStatusUpdate[] memory updates = abi.decode(
            message.data,
            (MintStatusUpdate[])
        );
        for (uint256 i = 0; i < updates.length; i++) {
            mintedOnShibarium[updates[i].id] = updates[i].status;
            emit MintStatusUpdated(updates[i].id, updates[i].status);
        }
    }

    function _transformXY(
        int16 x,
        int16 y
    ) internal pure onlyValid(x, y) returns (uint16, uint16) {
        return (uint16(x + 97), uint16(100 - y));
    }

    function _encodeXY(int16 x, int16 y) internal pure returns (uint32) {
        return
            ((uint32(uint16(x)) * factor) & clearLow) |
            (uint32(uint16(y)) & clearHigh);
    }

    function _authorizeUpgrade(
        address newImplementation
    ) internal override onlyOwner {}

    // Oracle functions
    function receiveData(uint256 _price, bytes32) internal override {
        ethToShib = _price;
    }

    function getData(
        address _provider,
        uint256 _fee
    ) external onlyModerator returns (bytes32) {
        bytes32 data = 0x574554482e534849422e41440000000000000000000000000000000000000000; // WETH.SHIB.AD
        return _requestData(_provider, _fee, data);
    }

    function increaseRouterAllowance(uint256 _amount) external onlyModerator {
        require(_increaseRouterAllowance(_amount), "ERR_FAILED_TO_INCREASE");
    }

    receive() external payable {}
}
