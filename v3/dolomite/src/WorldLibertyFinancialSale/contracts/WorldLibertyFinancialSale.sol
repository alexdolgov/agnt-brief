// SPDX-License-Identifier: BUSL-1.1
pragma solidity =0.8.25;

import "@chainlink/contracts/src/v0.8/shared/interfaces/AggregatorV3Interface.sol";
import "@openzeppelin/contracts-upgradeable/utils/cryptography/EIP712Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/utils/PausableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/access/Ownable2StepUpgradeable.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/utils/cryptography/ECDSA.sol";

contract WorldLibertyFinancialSale is
    Initializable,
    PausableUpgradeable,
    Ownable2StepUpgradeable,
    EIP712Upgradeable,
    ReentrancyGuardUpgradeable
{
    using SafeERC20 for IERC20;
    using ECDSA for bytes32;

    // Events
    event SignerChanged(address indexed signer);
    event SetGuardian(address indexed guardian, bool status);
    event SetTreasury(address indexed treasury);
    event Buy(
        address indexed buyer,
        address indexed token,
        uint256 amount,
        uint256 cost,
        uint256 wlfiPrice,
        uint256 amountContributed
    );

    // Errors
    error AMOUNT_MUST_BE_POSITIVE();
    error AMOUNT_MUST_BE_ZERO();
    error INVALID_TOKEN();
    error SOLD_OUT();

    // Struct for EIP-712 signature
    struct Purchase {
        address buyer;
        uint256 buyerCounter;
    }

    // Variables
    address public ETH; // ETH token address
    address public WETH; // WETH token address
    address public USDC; // USDC token address
    address public USDT; // USDT token address
    address public treasury; // Treasury address
    address public signer; // Signer address for EIP-712 signature
    address public wlfiToken; // WLFI token address
    uint256 public tokensSold; // WLFI total amount sold
    uint256 public tokensCap; // WLFI max tokens to be sold
    uint256 public tokensPrice; // WLFI price for each token

    // Mappings
    mapping(address => uint256) public purchases;
    mapping(address => uint256) public counter;
    mapping(address => bool) private _guardians;

    // Chainlink ETH/USD price feed
    AggregatorV3Interface private ethPriceFeed;

    /**
     * @notice Initialize World Liberty Financial Sale
     * @param _ETH The ETH token address
     * @param _WETH The WETH token address
     * @param _USDC The USDC token address
     * @param _USDT The USDT token address
     * @param _wlfiToken The WLFI token address
     * @param _ethPriceFeed The Chainlink ETH/USD price feed address
     * @param _signer The signer address for EIP-712 signature
     * @param _treasury The treasury address
     */
    function initialize(
        address _ETH,
        address _WETH,
        address _USDC,
        address _USDT,
        address _wlfiToken,
        address _ethPriceFeed,
        address _signer,
        address _treasury,
        uint256 _tokensCap,
        uint256 _tokensPrice
    ) public initializer {
        // Setup initializations
        __Ownable_init(_treasury);
        __EIP712_init("WLFISale", "1");
        __ReentrancyGuard_init();
        __Pausable_init();

        // Config sale parameters
        ETH = _ETH;
        WETH = _WETH;
        USDC = _USDC;
        USDT = _USDT;
        wlfiToken = _wlfiToken;
        ethPriceFeed = AggregatorV3Interface(_ethPriceFeed);
        treasury = _treasury;
        signer = _signer;

        // Token sale parameters
        tokensCap = _tokensCap; // WLFI Tokens Sale Cap
        tokensPrice = _tokensPrice; // Price per token in USD reflected in ETH

        // On deployment WLFI Sale is set to paused
        _pause();
    }

    /**
     * @notice Function to set a guardian address
     * @param _guardian The guardian address
     * @param _status The status of the guardian
     * @dev Only the owner can call this function
     */
    function setGuardian(address _guardian, bool _status) external onlyOwner {
        require(_guardian != address(0), "Invalid guardian address");
        _guardians[_guardian] = _status;
        emit SetGuardian(_guardian, _status);
    }

    /**
     * @notice Function to set the treasury address
     * @param _treasury The treasury address
     * @dev Only the owner can call this function
     */
    function setTreasury(address _treasury) external onlyOwner {
        require(_treasury != address(0), "Invalid treasury address");
        treasury = _treasury;
        emit SetTreasury(_treasury);
    }

    /**
     * @notice Function to set the signer address
     * @param _signer The signer address
     * @dev Only the owner can call this function
     */
    function setSigner(address _signer) external onlyOwner {
        require(_signer != address(0), "Invalid signer address");
        signer = _signer;
        emit SignerChanged(_signer);
    }

    /**
     * @notice Rescue accidental tokens that are stuck in the contract
     * @param recipient Treasury address
     * @param token Token address
     * @param value Value to rescue
     * @dev Only treasury multisig can invoke this function
     */
    function rescueTokens(
        address recipient,
        address token,
        uint256 value
    ) external onlyOwner {
        require(recipient != address(0), "recipient is address zero");
        require(value > 0, "value is zero");
        if (token == 0xEeeeeEeeeEeEeeEeEeEeeEEEeeeeEeeeeeeeEEeE) {
            uint256 balance = address(this).balance;
            uint256 ethValue = value > balance ? balance : value;
            (bool success, ) = payable(recipient).call{value: ethValue}("");
            require(success, "ETH transfer failed");
        } else {
            uint256 balanceOfToken = IERC20(token).balanceOf(address(this));
            uint256 erc20Value = value;
            if (value > balanceOfToken) {
                erc20Value = balanceOfToken;
            }
            IERC20(token).safeTransfer(recipient, erc20Value);
        }
    }

    /**
     * @notice Unpause the token transferability
     * @dev Only treasury multisig can invoke this function
     */
    function unPause() external onlyOwner {
        _unpause();
    }

    /**
     * @notice Pause token transferability
     * @dev Only treasury multisig and guardians can invoke this function
     */
    function pause() external {
        require(
            _msgSender() == owner() || _guardians[_msgSender()],
            "Invalid multisig or guardian"
        );
        _pause();
    }

    /**
     * @notice Unified buy function to handle ETH and ERC20 (WETH, USDC, USDT) payments
     * @param token The token address (use 0xEeeeeEeeeEeEeeEeEeEeeEEEeeeeEeeeeeeeEEeE for ETH)
     * @param amount The amount of tokens sent (set to 0 when paying with ETH)
     * @param signature The signature of the signer
     */
    function buy(
        address token,
        uint256 amount,
        bytes memory signature
    ) external payable whenNotPaused nonReentrant {
        if (token != ETH && token != USDC && token != USDT && token != WETH) revert INVALID_TOKEN();

        // Create the purchase struct for the current buyer
        Purchase memory purchase = Purchase(
            _msgSender(),
            counter[_msgSender()]
        );

        // Validate the EIP-712 typed signature
        validateTypedSignature(purchase, signature);

        uint256 costUSD;
        uint256 ethPrice = getLatestETHPrice(); // ETH price in USD with 8 decimals

        if (token == ETH) {
            // Buying with ETH
            if (msg.value == 0) revert AMOUNT_MUST_BE_POSITIVE();
            costUSD = (msg.value * ethPrice) / 1e8; // Convert WEI -> ETH * USD price, result should have 18 decimals
        } else {
            // Buying with ERC20 tokens
            if (msg.value != 0) revert AMOUNT_MUST_BE_ZERO();
            if (amount == 0) revert AMOUNT_MUST_BE_POSITIVE();
            IERC20(token).safeTransferFrom(_msgSender(), address(this), amount);
            if (token == WETH) {
                costUSD = (amount * ethPrice) / 1e8; // Normalize WETH to 18 decimals
            } else {
                // USDC or USDT
                costUSD = amount * 1e12; // Normalize USDC/USDT to 18 decimals (6 decimals to 18 decimals)
            }
        }

        uint256 remainingUSD = costUSD;
        uint256 totalWlfiAmount = 0;
        uint256 weightedPriceSum = 0;

        // Calculate the WLFI amount and handle the contribution logic
        uint256 remainingWLFI = tokensCap - tokensSold;
        uint256 costPerWLFI = (remainingWLFI * tokensPrice) / 1e18;

        if (remainingUSD <= costPerWLFI) {
            totalWlfiAmount = (remainingUSD * 1e18) / tokensPrice;
            tokensSold += totalWlfiAmount;
            purchases[_msgSender()] += totalWlfiAmount;
            weightedPriceSum += totalWlfiAmount * tokensPrice;
            remainingUSD = 0;
        } else {
            totalWlfiAmount = (costPerWLFI * 1e18) / tokensPrice;
            tokensSold += totalWlfiAmount;
            purchases[_msgSender()] += totalWlfiAmount;
            weightedPriceSum += totalWlfiAmount * tokensPrice;
            remainingUSD -= costPerWLFI;
        }

        // Final adjustment for any leftover tokens (should be 0 if logic is correct)
        uint256 remainingTokens = tokensCap - tokensSold;
        if (remainingTokens > 0 && remainingTokens <= 133) {
            tokensSold += remainingTokens;
            totalWlfiAmount += remainingTokens;
            purchases[_msgSender()] += remainingTokens;
        }

        // Increment the buyer's counter
        counter[_msgSender()] += 1;

        // Refund logic for excess contribution
        uint256 refundAmount;
        if (remainingUSD > 0) {
            if (token == ETH) {
                refundAmount = (remainingUSD * 1e8) / ethPrice; // Convert remaining USD back to ETH
                (bool success, ) = _msgSender().call{value: refundAmount}("");
                require(success, "Refund ETH transfer failed");
            } else {
                if (token == WETH) {
                    refundAmount = (remainingUSD * 1e8) / ethPrice; // Convert remaining USD back to WETH
                } else {
                    refundAmount = remainingUSD / 1e12; // Convert remaining USD to USDC/USDT 18 decimals to 6 decimals
                }
                IERC20(token).safeTransfer(_msgSender(), refundAmount);
            }
        }

        // Transfer ETH to the treasury
        if (token == ETH) {
            (bool success, ) = payable(treasury).call{value: address(this).balance}("");
            require(success, "ETH transfer failed");
        } else {
            // Transfer ERC20 tokens to the treasury
            IERC20(token).safeTransfer(treasury, amount - refundAmount);
        }

        // Transfer WLFI tokens to the buyer
        IERC20(wlfiToken).safeTransfer(_msgSender(), totalWlfiAmount);

        // Check if the token sale is sold out
        if (weightedPriceSum == 0 || totalWlfiAmount == 0) revert SOLD_OUT();

        // Calculate weighted average price
        uint256 averagePrice = weightedPriceSum / totalWlfiAmount;

        // Calculate the amount contributed in ETH/ERC20
        uint256 amountContributed = token == ETH ? msg.value : amount;

        // Emit the Buy event once with the final details
        emit Buy(
            _msgSender(),
            token,
            totalWlfiAmount,
            costUSD - remainingUSD,
            averagePrice,
            amountContributed
        );
    }

    /**
     * @notice Calculate the cost and amount of WLFI tokens based on the given contribution
     * @param token The token address (use 0xEeeeeEeeeEeEeeEeEeEeeEEEeeeeEeeeeeeeEEeE for ETH)
     * @param amount The amount of tokens to contribute
     * @return wlfiAmount The amount of WLFI tokens to receive
     * @return costUSD The cost in USD
     */
    function calculateBuy(
        address token,
        uint256 amount
    )
        external
        view
        whenNotPaused
        returns (uint256 wlfiAmount, uint256 costUSD)
    {
        if (token != ETH && token != USDC && token != USDT && token != WETH)
            revert INVALID_TOKEN();

        uint256 ethPrice = getLatestETHPrice(); // ETH price in USD with 8 decimals

        if (token == ETH) {
            // Buying with ETH
            if (amount == 0) revert AMOUNT_MUST_BE_POSITIVE();
            costUSD = (amount * ethPrice) / 1e8; // Convert WEI -> ETH * USD price, result should have 18 decimals
        } else {
            // Buying with ERC20 tokens
            if (amount == 0) revert AMOUNT_MUST_BE_POSITIVE();
            if (token == WETH) {
                costUSD = (amount * ethPrice) / 1e8; // Normalize WETH to 18 decimals
            } else {
                // USDC or USDT
                costUSD = amount * 1e12; // Normalize USDC/USDT to 18 decimals (6 decimals to 18 decimals)
            }
        }

        uint256 remainingUSD = costUSD;
        uint256 remainingWLFI = tokensCap - tokensSold;
        uint256 costPerWLFI = (remainingWLFI * tokensPrice) / 1e18;

        if (remainingUSD <= costPerWLFI) {
            wlfiAmount = (remainingUSD * 1e18) / tokensPrice;
            remainingUSD = 0;
        } else {
            wlfiAmount = (costPerWLFI * 1e18) / tokensPrice;
            remainingUSD -= costPerWLFI;
        }

        if (remainingUSD > 0) {
            costUSD -= remainingUSD;
        }

        return (wlfiAmount, costUSD);
    }

    /**
     * @notice Get WLFI Token sale data
     * @return _tokensCap The total amount of WLFI tokens to be sold
     * @return _price The price of each WLFI token in USD
     * @return _availableTokensToBuy The remaining WLFI tokens available to buy
     * @return maxEth The maximum ETH required to buy remaining WLFI tokens
     * @return maxUsd The maximum USD required to buy remaining WLFI tokens
     * @return _paused The current sale status
     */
    function getAggregatedSaleData()
        external
        view
        returns (
            uint256 _tokensCap,
            uint256 _price,
            uint256 _availableTokensToBuy,
            uint256 maxEth,
            uint256 maxUsd,
            bool _paused
        )
    {
        (maxEth, maxUsd) = calculateMaxContribution();
        return (
            tokensCap,
            tokensPrice,
            tokensCap - tokensSold,
            maxEth,
            maxUsd,
            paused()
        );
    }

    /**
     * @notice View authorized guardians
     * @param guardian Guardian address
     */
    function isGuardian(
        address guardian
    ) external view returns (bool guardianStatus) {
        return _guardians[guardian];
    }

    /**
     * @notice Gets the WLFI price
     * @return The WLFI price in USD
     */
    function getCurrentPrice() external view returns (uint256) {
        if (tokensSold < tokensCap) {
            return tokensPrice;
        }
        revert SOLD_OUT();
    }

    /**
     * @notice Returns the latest ETH price
     * @return The latest ETH price in USD with 8 decimals
     */
    function getLatestETHPrice() public view returns (uint256) {
        (
            uint80 roundId,
            int answer,
            ,
            uint256 updateTime,
            uint80 answeredInRound
        ) = ethPriceFeed.latestRoundData();
        require(answer > 0, "Chainlink price <= 0");
        require(updateTime != 0, "Incomplete round");
        require(answeredInRound >= roundId, "Stale price");
        require(block.timestamp - updateTime < 90 minutes, "Price is outdated");
        return uint256(answer);
    }

    /**
     * @notice Calculate the maximum contribution in ETH and USD for remaining tokens
     * @return maxEth The maximum ETH required to buy remaining WLFI tokens
     * @return maxUsd The maximum USD (for USDC/USDT) required to buy remaining WLFI tokens
     */
    function calculateMaxContribution()
        public
        view
        returns (uint256 maxEth, uint256 maxUsd)
    {
        uint256 ethPrice = getLatestETHPrice(); // ETH price in USD with 8 decimals
        uint256 remainingTokens = tokensCap - tokensSold;

        // Calculate max contribution in USD
        maxUsd = (remainingTokens * tokensPrice) / 1e18;

        // Convert USD to ETH
        maxEth = (maxUsd * 1e8) / ethPrice;
    }

    /**
     * @notice Function to validate the signature using EIP-712
     * @param purchase The purchase struct
     * @param signature The signature of the signer
     * @dev This function is used to validate the signature of the buyer
     */
    function validateTypedSignature(
        Purchase memory purchase,
        bytes memory signature
    ) private view {
        // Step 1: Hash the structured data (buyer, buyerCounter)
        bytes32 structHash = keccak256(
            abi.encode(
                keccak256("Purchase(address buyer,uint256 buyerCounter)"),
                purchase.buyer,
                purchase.buyerCounter
            )
        );

        // Step 2: Create the EIP-712 hash
        bytes32 digest = _hashTypedDataV4(structHash);

        // Step 3: Recover the signer from the signature
        address recoveredSigner = ECDSA.recover(digest, signature);

        // Step 4: Verify the recovered signer matches the backend signer
        require(recoveredSigner == signer, "Invalid signature");
    }

    uint256[50] private __gap; // reserve space for upgradeability storage slot
}
