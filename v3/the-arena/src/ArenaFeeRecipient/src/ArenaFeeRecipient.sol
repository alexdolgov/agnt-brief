// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

import "lib/openzeppelin-contracts/contracts/access/Ownable.sol";
import "lib/openzeppelin-contracts/contracts/token/ERC20/IERC20.sol";

interface IArenaContract {
    function setFeeDestination(address _feeDestination) external;
}

interface IUniswapV2Router02 {
    function swapExactAVAXForTokens(uint256 amountOutMin, address[] calldata path, address to, uint256 deadline) external payable returns (uint256[] memory amounts);
}


contract ArenaFeeRecipient is Ownable {
    address public constant ARENA_TICKETS_CONTRACT = 0xC605C2cf66ee98eA925B1bb4FeA584b71C00cC4C;
    address public constant WAVAX_ADDRESS = 0xB31f66AA3C1e785363F0875A1B74E27b85FD66c7;
    address public constant ARENA_TOKEN_ADDRESS = 0xB8d7710f7d8349A506b75dD184F05777c82dAd0C;
    address public constant ARENA_ROUTER = 0xF56D524D651B90E4B84dc2FffD83079698b9066E;
    address public immutable ARENA_LAUNCHPAD_CONTRACT;
    uint16 public splitBps; // 10000 = 100%
    bool public autoHandlingEnabled;
    address public foundationWallet;
    uint256 public actionThreshold;
    address public AUTOMATION_HANDLER;
    mapping(address => address) public feeSourceToFeeDestination;

    event ArenaBuyBack(uint256 avaxAmount, uint256 arenaAmount);
    event FeeSourceToFeeDestinationSet(address indexed feeSource, address indexed feeDestination, string feeSourceName);


    constructor(address _launchpadContract, address _arenaTicketsWallet, address _arenaLaunchpadWallet, address _foundationWallet, uint16 _splitBps, address _owner) Ownable(_owner) {
        ARENA_LAUNCHPAD_CONTRACT = _launchpadContract;
        _setFeeSourceToFeeDestination(ARENA_TICKETS_CONTRACT, _arenaTicketsWallet, "Arena Tickets");
        _setFeeSourceToFeeDestination(ARENA_LAUNCHPAD_CONTRACT, _arenaLaunchpadWallet, "Arena Launchpad");
        foundationWallet = _foundationWallet;
        splitBps = _splitBps;
        autoHandlingEnabled = true;
        actionThreshold = 5 ether;
    }
    /// OWNER FUNCTIONS ///

    function emergencyWithdraw() external onlyOwner() {
        payable(owner()).transfer(address(this).balance);
    }

    function emergencyWithdrawTokens(address _token, uint256 _amount) external onlyOwner() {
        IERC20(_token).transfer(owner(), _amount);
    }

    function setFoundationWallet(address _foundationWallet) external onlyOwner() {
        foundationWallet = _foundationWallet;
    }

    function setAutomationHandler(address _automationHandler) external onlyOwner() {
        AUTOMATION_HANDLER = _automationHandler;
    }

    function setActionThreshold(uint256 _actionThreshold) external onlyOwner() {
        actionThreshold = _actionThreshold;
    }

    function setAutoHandlingEnabled(bool _autoHandlingEnabled) external onlyOwner() {
        autoHandlingEnabled = _autoHandlingEnabled;
    }

    function setSplitBps(uint16 _splitBps) external onlyOwner() {
        require(_splitBps <= 10000, "Split BPS must be less than or equal to 10000");
        splitBps = _splitBps;
    }

    function setFeeDestinationOnArenaTicketsContract(address _feeDestination) external onlyOwner() {
        IArenaContract(ARENA_TICKETS_CONTRACT).setFeeDestination(_feeDestination);
    }

    function setFeeSourceToFeeDestination(address _feeSource, address _feeDestination, string memory _feeSourceName) public onlyOwner() {
        _setFeeSourceToFeeDestination(_feeSource, _feeDestination, _feeSourceName);
    }

    function _setFeeSourceToFeeDestination(address _feeSource, address _feeDestination, string memory _feeSourceName) internal {
        feeSourceToFeeDestination[_feeSource] = _feeDestination;
        emit FeeSourceToFeeDestinationSet(_feeSource, _feeDestination, _feeSourceName);
    }

    receive() external payable {
        uint256 amount = msg.value;
        uint256 arenaFeeAmount = amount * splitBps / 10000;
        address feeDestination = feeSourceToFeeDestination[msg.sender];
        if (feeDestination != address(0)) {
            (bool success, ) = payable(feeDestination).call{value: arenaFeeAmount}("");
            require(success, "Transfer to fee destination failed");
        }
        // leave fees in the contract if they are from other sources
        else {
            return;
        }
        uint256 foundationFeeAmount = amount - arenaFeeAmount;
        if (!autoHandlingEnabled && foundationFeeAmount > 0) {
            (bool success, ) = payable(foundationWallet).call{value: foundationFeeAmount}("");
            require(success, "Transfer to foundation wallet failed");
        }
        // leave it in the contract if autoHandlingEnabled is true
    }

    function handleArenaBuyBack(uint256 minAmountOut) external {
        require(autoHandlingEnabled, "Auto handling is not enabled");
        require(isThresholdReached(), "Amount is below action threshold");
        require(msg.sender == AUTOMATION_HANDLER, "Only automation handler can call this function");
        address[] memory path = new address[](2);
        path[0] = WAVAX_ADDRESS;
        path[1] = ARENA_TOKEN_ADDRESS;
        uint256[] memory amounts = IUniswapV2Router02(ARENA_ROUTER).swapExactAVAXForTokens{value: address(this).balance}(minAmountOut, path, foundationWallet, block.timestamp);
        emit ArenaBuyBack(amounts[0], amounts[1]);
    }

    function isThresholdReached() public view returns (bool) {
        return address(this).balance >= actionThreshold;
    }

}