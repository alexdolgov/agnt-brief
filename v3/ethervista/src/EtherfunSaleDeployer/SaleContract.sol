// SPDX-License-Identifier: MIT
pragma solidity >=0.8.19;

import "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

interface IVistaFactory {
    function getPair(address tokenA, address tokenB) external view returns (address);
}

interface IPair {
    function claimShare() external;
    function viewShare() external view returns (uint256 share);
}

interface ILaunchContract {
    function launch(
        address token,
        uint256 amountTokenDesired,
        uint256 amountETHMin,
        uint256 amountTokenMin,
        uint8 buyLpFee,
        uint8 sellLpFee,
        uint8 buyProtocolFee,
        uint8 sellProtocolFee,
        address protocolAddress
    ) external payable;
}

interface IEtherFunFactoryBalances {
    function claimableBalance(address tokenAddress, address user) external view returns (uint256);
}

/// @notice Sale/token contract is deployed only once the sale is bonded, and is launched immediately after.
///         Pre-launch buy/sell & user accounting live in the factory.
///         This contract only needs: (1) initialize bonded state, (2) launch, (3) claim, (4) LP fee claiming.
contract EtherfunSale is ReentrancyGuard, ERC20 {
    address public creator;
    address public funfactory;

    uint256 public totalTokens;
    uint256 public saleGoal;

    // Fee params kept for determinism / metadata compatibility
    uint8 public initiatorShare;

    // Bonded state (set once by the factory right after deployment)
    uint256 public totalRaised;
    uint256 public tokensSold;
    bool public status;   // bonded
    bool public launched;

    address public wethAddress = 0xC02aaA39b223FE8D0A0e5C4F27eAD9083C756Cc2; 
    address public vistaFactoryAddress = 0x9a27cb5ae0B2cEe0bb71f9A85C0D60f3920757B4; 

    modifier onlyFunFactory() {
        require(msg.sender == funfactory, "Only factory");
        _;
    }

    constructor(
        string memory name,
        string memory symbol,
        address _creator,
        address _factory,
        uint256 _totalTokens,
        uint256 _saleGoal,
        uint8 _initiatorshare
    ) ERC20(name, symbol) {
        creator = _creator;
        funfactory = _factory;

        totalTokens = _totalTokens;
   
        saleGoal = _saleGoal;

        initiatorShare = _initiatorshare;

        // Mint full supply to this contract; unsold portion is used to seed LP on launch.
        _mint(address(this), _totalTokens);
    }

    /// @notice Called by factory after funding this contract with `_totalRaised` ETH.
    ///         Sets the bonded state used by `launchSale` (and indirectly LP sizing).
    function initializeBondedState(uint256 _tokensSold, uint256 _totalRaised) external payable onlyFunFactory nonReentrant
    {
        require(!launched, "Sale already launched");
        require(!status, "Already bonded");
        require(_totalRaised >= saleGoal, "Sale goal not reached");
        require(address(this).balance >= _totalRaised, "Funding mismatch");
        require(msg.value == _totalRaised, "Value mismatch");

        tokensSold = _tokensSold;
        totalRaised = _totalRaised;
        status = true;
    }


    /// @notice Launches the sale: adds LP via launcher and distributes creator share
    function launchSale(
        address _launchContract,
        uint8 buyLpFee,
        uint8 sellLpFee,
        uint8 buyProtocolFee,
        uint8 sellProtocolFee,
        address saleInitiator
    ) external onlyFunFactory nonReentrant {
        require(!launched, "Sale already launched");
        require(totalRaised >= saleGoal, "Sale goal not reached");
        require(status, "not bonded");
        launched = true;

        //add as a constructor param ?
        uint256 creatorTokens = (totalTokens * 5)/100;
        uint256 tokenAmount = (totalTokens - tokensSold - creatorTokens); //give 5% for free to creator
        uint256 ethAmount = totalRaised;

        uint256 launchEthAmount = ((100 - initiatorShare) * ethAmount) / 100;

        _approve(address(this), _launchContract, tokenAmount);

        ILaunchContract(_launchContract).launch{value: launchEthAmount}(
            address(this),
            tokenAmount,
            0,
            0,
            buyLpFee,
            sellLpFee,
            buyProtocolFee,
            sellProtocolFee,
            creator 
        );

        _transfer(address(this), creator, creatorTokens);
        uint256 initiatorShareAmount = address(this).balance;
        require(initiatorShareAmount > 0, "No balance for creator share");

        payable(saleInitiator).transfer(initiatorShareAmount); //transfer eth to cover gas for sale initiator
    }

    /// @notice Claims ERC20 tokens after launch. Amount is read from the factory's accounting.
    function claimTokens(address user) external onlyFunFactory nonReentrant {
        require(launched, "Sale not launched");
        uint256 tokenAmount = IEtherFunFactoryBalances(funfactory).claimableBalance(address(this), user);
        require(tokenAmount > 0, "No tokens to claim");

        _transfer(address(this), user, tokenAmount);
    }

    function takeFee() external onlyFunFactory nonReentrant {
        IVistaFactory vistaFactory = IVistaFactory(vistaFactoryAddress);
        address pairAddress = vistaFactory.getPair(address(this), wethAddress);

        require(pairAddress != address(0), "Pair not found");

        IPair pair = IPair(pairAddress);
        pair.claimShare();

        uint256 balance = address(this).balance;
        require(balance > 0, "No fees");

        payable(0x4C5fbF8D815379379b3695ba77B5D3f898C1230b).transfer(balance);
    }

    function getShare() external view returns (uint256) {
        IVistaFactory vistaFactory = IVistaFactory(vistaFactoryAddress);
        address pairAddress = vistaFactory.getPair(address(this), wethAddress);

        return IPair(pairAddress).viewShare();
    }

    receive() external payable {}
}
