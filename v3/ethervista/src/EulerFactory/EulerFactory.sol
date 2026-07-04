// SPDX-License-Identifier: MIT
pragma solidity >=0.8.19;

import "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import { UD60x18, ud } from "@prb/math/src/UD60x18.sol";

interface ISaleContract {
    function initializeBondedState(uint256 tokensSold, uint256 totalRaised) external payable;
    function claimTokens(address user) external;
    function launchSale(
        address protocol, //+/- 1
        uint8 buyLpFee,
        uint8 sellLpFee,
        uint8 buyProtocolFee,
        uint8 sellProtocolFee,
        address saleInitiator
    ) external;
}

interface ISaleDeployer {
    function predictAddress(
        bytes32 salt,
        string calldata name,
        string calldata symbol,
        address creator,
        uint256 totalTokens,
        uint256 saleGoal,
        uint8 creatorShare
    ) external view returns (address);

    function deploy(
        bytes32 salt,
        string calldata name,
        string calldata symbol,
        address creator,
        uint256 totalTokens,
        uint256 saleGoal,
        uint8 creatorShare
    ) external returns (address);
}

contract EulerFactory is ReentrancyGuard {
    address private owner;
    address SPONSOR = 0x4C5fbF8D815379379b3695ba77B5D3f898C1230b; 
    // -----------------------------
    uint256 public saleCounter;

    struct BondingParams {
        uint256 totalTokens;
        uint256 saleGoal;
        uint256 k;
        uint256 alpha;
        uint8 creatorShare; 
    }

    struct LaunchFees {
        uint8 buyLpFee;
        uint8 sellLpFee;
        uint8 buyProtocolFee;
        uint8 sellProtocolFee;
        address protocol; 
    }

    struct Sale {
        address creator;
        string name;
        string symbol;
        // Bonding curve & bonding thresholds (per sale)
        BondingParams bonding;
        // Launch fee config (per sale)
        LaunchFees launchFees;
        // Per-sale deployer (allows different token implementations)
        address saleDeployer;
        uint256 totalRaised;
        uint256 tokensSold;
        bool launched;
        uint256 creationNonce;
    }

    struct HistoricalData {
        uint256 timestamp;
        uint256 totalRaised;
    }

    mapping(address => Sale) public sales;
    mapping(address => mapping(address => bool)) public hasClaimed;
    mapping(address => mapping(address => uint256)) public tokenBalances;
    mapping(address => address[]) public tokenHolders; //token -> holders
    mapping(address => mapping(address => bool)) public isTokenHolder;
    mapping(address => HistoricalData[]) public historicalData;
    mapping(address => address[]) public userBoughtTokens; //user -> tokens
    mapping(address => mapping(address => bool)) public userHasBoughtToken;
    mapping(address => uint256) private creationNonce;
    mapping(address => address[]) public creatorTokens;
    mapping(address => bool) public whitelistedDeployer;

    event SaleCreated(
        address indexed tokenAddress,
        address indexed deployerContract,
        address indexed creator,
        string name,
        string symbol,
        uint256 totalTokens,
        uint256 saleGoal,
        string logoUrl,
        string websiteUrl,
        string twitterUrl,
        string telegramUrl,
        string description
    );

    event SaleLaunched(address indexed tokenAddress, address indexed launcher);
    event Claimed(address indexed tokenAddress, address indexed claimant);
    event TokensBought(address indexed tokenAddress, address indexed buyer, uint256 totalRaised, uint256 tokenBalance);
    event TokensSold(address indexed tokenAddress, address indexed seller, uint256 totalRaised, uint256 tokenBalance);

    modifier onlyOwner() {
        require(msg.sender == owner, "Not the owner");
        _;
    }

    constructor() {
        owner = msg.sender;
    }

    // -----------------------------
    // Sale creation (register only; token is deployed only when bonded)
    // -----------------------------

    function createSale(
        string memory name,
        string memory symbol,
        string memory logoUrl,
        string memory websiteUrl,
        string memory twitterUrl,
        string memory telegramUrl,
        string memory description,
        address creator,
        BondingParams calldata bondingParams,
        LaunchFees calldata launchFees,
        address deployerContract
    ) external nonReentrant {
        require(whitelistedDeployer[deployerContract], "Deployer not whitelisted");

        address resolvedCreator;
        if (creator == address(0)) {
            resolvedCreator = msg.sender; // user pays their own gas
        } else {
            // gas sponsor is paying on behalf of a creator
            require(msg.sender == SPONSOR, "Only sponsor can set creator");
            resolvedCreator = creator;
        }

        creationNonce[resolvedCreator]++;
        uint256 currentNonce = creationNonce[resolvedCreator];

        address tokenAddress = predictTokenAddress(
            resolvedCreator,
            name,
            symbol,
            currentNonce,
            deployerContract,
            bondingParams.totalTokens,
            bondingParams.saleGoal,
            bondingParams.creatorShare
        );

        sales[tokenAddress] = Sale({
            creator: resolvedCreator,
            name: name,
            symbol: symbol,
            bonding: BondingParams({
                totalTokens: bondingParams.totalTokens,
                saleGoal: bondingParams.saleGoal,
                k: bondingParams.k,
                alpha: bondingParams.alpha,
                creatorShare: bondingParams.creatorShare
            }),
            launchFees: LaunchFees({
                buyLpFee: launchFees.buyLpFee,
                sellLpFee: launchFees.sellLpFee,
                buyProtocolFee: launchFees.buyProtocolFee,
                sellProtocolFee: launchFees.sellProtocolFee,
                protocol: launchFees.protocol
            }),
            saleDeployer: deployerContract,
            totalRaised: 0,
            tokensSold: 0,
            launched: false,
            creationNonce: currentNonce
        });

        creatorTokens[resolvedCreator].push(tokenAddress);
        saleCounter++;

        emit SaleCreated(
            tokenAddress,
            deployerContract,
            resolvedCreator,
            name,
            symbol,
            bondingParams.totalTokens,
            bondingParams.saleGoal,
            logoUrl,
            websiteUrl,
            twitterUrl,
            telegramUrl,
            description
        );
    }

    // -----------------------------
    // Pre-launch buy/sell
    // -----------------------------

    function buyToken(address tokenAddress, uint256 minTokensOut) external payable nonReentrant {
        _buy(tokenAddress, msg.sender, msg.value, minTokensOut);
    }

    function _buy(address tokenAddress, address buyer, uint256 ethIn, uint256 minTokensOut) internal {
        Sale storage sale = sales[tokenAddress];
        require(sale.creator != address(0), "Sale not found");
        require(!sale.launched, "Sale already launched");
        require(ethIn > 0, "No ETH sent");
        require(sale.totalRaised < sale.bonding.saleGoal, "bonded");
        require(sale.totalRaised + ethIn <= sale.bonding.saleGoal + 0.1 ether, "Sale goal reached");

        uint256 tokensToBuy = getTokenIn(tokenAddress, ethIn); //i.e tokensBought
        require(tokensToBuy >= minTokensOut, "Slippage too high, transaction reverted");

        sale.tokensSold += tokensToBuy;
        sale.totalRaised += ethIn;

        tokenBalances[tokenAddress][buyer] += tokensToBuy;

        if (!isTokenHolder[tokenAddress][buyer]) { //same as has bought, inverse mapping
            tokenHolders[tokenAddress].push(buyer);
            isTokenHolder[tokenAddress][buyer] = true;
        }

        historicalData[tokenAddress].push(HistoricalData({
            timestamp: block.timestamp,
            totalRaised: sale.totalRaised
        }));

        if (!userHasBoughtToken[buyer][tokenAddress]) {
            userBoughtTokens[buyer].push(tokenAddress);
            userHasBoughtToken[buyer][tokenAddress] = true;
        }

        emit TokensBought(tokenAddress, buyer, sale.totalRaised, tokenBalances[tokenAddress][buyer]);

        // Bond + deploy + launch in the same tx
        if (sale.totalRaised >= sale.bonding.saleGoal) {
            _deployAndLaunch(tokenAddress, buyer);
        }
    }

    function sellToken(address tokenAddress, uint256 tokenAmount, uint256 minEthOut) external nonReentrant {
        Sale storage sale = sales[tokenAddress];
        require(sale.creator != address(0), "Sale not found");
        require(!sale.launched, "Sale already launched");
        require(tokenAmount > 0, "Token amount must be greater than 0");
        require(tokenBalances[tokenAddress][msg.sender] >= tokenAmount, "Insufficient token balance");
        require(sale.totalRaised < sale.bonding.saleGoal, "bonded");

        uint256 ethToReturn = getEthIn(tokenAddress, tokenAmount);
        require(ethToReturn >= minEthOut, "Slippage too high, transaction reverted");
        require(ethToReturn <= sale.totalRaised, "Insufficient sale balance");
        require(ethToReturn <= address(this).balance, "Insufficient contract balance");

        sale.tokensSold -= tokenAmount;
        sale.totalRaised -= ethToReturn;
        tokenBalances[tokenAddress][msg.sender] -= tokenAmount;

        payable(msg.sender).transfer(ethToReturn);

        historicalData[tokenAddress].push(HistoricalData({
            timestamp: block.timestamp,
            totalRaised: sale.totalRaised
        }));

        emit TokensSold(tokenAddress, msg.sender, sale.totalRaised, tokenBalances[tokenAddress][msg.sender]);
    }

    // -----------------------------
    // Deploy + launch (token created only when bonded)
    // -----------------------------

    function _deployAndLaunch(address tokenAddress, address saleInitiator) internal {
        Sale storage sale = sales[tokenAddress];
        require(!sale.launched, "Sale already launched");
        require(sale.totalRaised >= sale.bonding.saleGoal, "Sale goal not reached");

        sale.launched = true;

        bytes32 salt = keccak256(abi.encodePacked(sale.creator, sale.creationNonce));

        address deployed = ISaleDeployer(sale.saleDeployer).deploy(
            salt,
            sale.name,
            sale.symbol,
            sale.creator,
            sale.bonding.totalTokens,
            sale.bonding.saleGoal,
            sale.bonding.creatorShare
        );

        // The predicted address when creating the sale must match the deployed address.
        require(deployed == tokenAddress, "CREATE2 address mismatch");

        // Fund the token/sale contract with the raised ETH (after-fee).
        ISaleContract(deployed).initializeBondedState{value: sale.totalRaised}(
            sale.tokensSold,
            sale.totalRaised
        );

        emit SaleLaunched(tokenAddress, saleInitiator);

        ISaleContract(deployed).launchSale(
            sale.launchFees.protocol,
            sale.launchFees.buyLpFee,
            sale.launchFees.sellLpFee,
            sale.launchFees.buyProtocolFee,
            sale.launchFees.sellProtocolFee,
            saleInitiator
        );
    }

    // -----------------------------
    // Claims (factory gates + clears balances)
    // -----------------------------

    function claim(address tokenAddress) external nonReentrant {
        Sale storage sale = sales[tokenAddress];
        require(sale.launched, "Sale not launched");
        require(!hasClaimed[tokenAddress][msg.sender], "Already claimed");

        uint256 bal = tokenBalances[tokenAddress][msg.sender];
        require(bal > 0, "No tokens to claim");

        hasClaimed[tokenAddress][msg.sender] = true;

        ISaleContract(tokenAddress).claimTokens(msg.sender);

        // Clear claimable balance after successful transfer.
        tokenBalances[tokenAddress][msg.sender] = 0;

        emit Claimed(tokenAddress, msg.sender);
    }

    /// @notice Read by the token contract to determine claimable amount.
    function claimableBalance(address tokenAddress, address user) external view returns (uint256) {
        return tokenBalances[tokenAddress][user];
    }

    // -----------------------------
    // misc getters
    // -----------------------------

    function getUserBoughtTokens(address user) external view returns (address[] memory) {
        return userBoughtTokens[user];
    }

    function getUserBoughtTokensLength(address user) external view returns (uint256) {
        return userBoughtTokens[user].length;
    }

    function getCurrentNonce(address creator) external view returns (uint256) {
        return creationNonce[creator];
    }

    function getCreatorTokens(address creator) external view returns (address[] memory) {
        return creatorTokens[creator];
    }

    function getAllHistoricalData(address token) external view returns (HistoricalData[] memory) {
        return historicalData[token];
    }

    function getTokenHoldersCount(address tokenAddress) external view returns (uint256) {
        return tokenHolders[tokenAddress].length;
    }

    function getAllTokenHolders(address tokenAddress) external view returns (address[] memory) {
        return tokenHolders[tokenAddress];
    }

    // -----------------------------
    // Bonding curve math
    // -----------------------------

    function getEthIn(address tokenAddress, uint256 tokenAmount) public view returns (uint256) {
        Sale storage sale = sales[tokenAddress];

        UD60x18 soldTokensFixed = ud(sale.tokensSold);
        UD60x18 tokenAmountFixed = ud(tokenAmount);
        UD60x18 kFixed = ud(sale.bonding.k);
        UD60x18 alphaFixed = ud(sale.bonding.alpha);

        UD60x18 ethBefore = kFixed.mul(alphaFixed.mul(soldTokensFixed).exp()).sub(kFixed);
        UD60x18 ethAfter = kFixed.mul(alphaFixed.mul(soldTokensFixed.sub(tokenAmountFixed)).exp()).sub(kFixed);

        return ethBefore.sub(ethAfter).unwrap();
    }

    function getTokenIn(address tokenAddress, uint256 ethAmount) public view returns (uint256) {
        Sale storage sale = sales[tokenAddress];

        UD60x18 totalRaisedFixed = ud(sale.totalRaised);
        UD60x18 ethAmountFixed = ud(ethAmount);
        UD60x18 kFixed = ud(sale.bonding.k);
        UD60x18 alphaFixed = ud(sale.bonding.alpha);

        UD60x18 tokensBefore = totalRaisedFixed.div(kFixed).add(ud(1e18)).ln().div(alphaFixed);
        UD60x18 tokensAfter = totalRaisedFixed.add(ethAmountFixed).div(kFixed).add(ud(1e18)).ln().div(alphaFixed);

        return tokensAfter.sub(tokensBefore).unwrap();
    }

    // -----------------------------
    // CREATE2 address prediction
    // -----------------------------

    function predictTokenAddress(
        address creator,
        string memory name,
        string memory symbol,
        uint256 nonce,
        address deployer,
        uint256 totalTokens,
        uint256 saleGoal,
        uint8 creatorShare
    ) public view returns (address) {
        require(deployer != address(0), "Deployer not set");
        bytes32 salt = keccak256(abi.encodePacked(creator, nonce));
        return ISaleDeployer(deployer).predictAddress(
            salt,
            name,
            symbol,
            creator,
            totalTokens,
            saleGoal,
            creatorShare
        );
    }

    function whitelistDeployer(address deployer) external onlyOwner {
        whitelistedDeployer[deployer] = true;
    }

    receive() external payable {}
}
