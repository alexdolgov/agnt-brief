// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/access/Ownable2Step.sol";
import "@openzeppelin/contracts/utils/Strings.sol";

import 'contracts/Integrations/Gelato/AutomateTaskCreator.sol';

interface ISilver {
	function mint(address _to, uint256 _amount) external;
}

struct FarmsMint {
	address farmMultisig;
	uint256 minted;
	uint256 toMintPerDay;
	uint256 yearsLeft;
	uint256 daysLeft;
	uint256 lastExecution;
	bytes32 taskId;
}

struct PresalesMint {
	uint256 minted;
	uint256 toMintPerDay;
	uint256 amountPurchased;
	uint256 lastExecution;
	bytes32 taskId;
}

/// @title SilverMint
/// @author github.com/SifexPro
/// @notice This contract handles the minting of Silver tokens on the Sonic network
contract SilverMint is AutomateTaskCreator, Ownable2Step {
	// Supplies
	uint256 public immutable MAX_SUPPLY;
	uint256 public constant TEAM_SUPPLY = 500_000 ether;
	uint256 public constant LIQUIDITY_SUPPLY = 200_000 ether;
	uint256 public constant YEARLY_FARMS_SUPPLY = 1_000_000 ether;
	uint256 public constant PRESALES_SUPPLY = 300_000 ether;

	// Utils variables
	ISilver public silver;
	address public teamMultisig;
	FarmsMint public farmsMint;
	mapping(address => PresalesMint) public presalesMint;

	// Presales variables
	uint256 public PRESALES_TO_MINT;
	uint256 public PRESALES_MINTED;

	// Mint event
	event Minted(address indexed to, uint256 amount);
	event FarmMinted(address indexed to, uint256 amountPerDay, uint256 totalMinted);
	event PresalesMinted(address indexed to, uint256 amountPerDay, uint256 totalMinted);

	// Presales events
	event PresalesAddedUser(address indexed user, uint256 amountPurchased);

	// Gelato events
	event GelatoTaskCreated(bytes32 id);
	event GelatoTaskCanceled(bytes32 id);
	event GelatoFeesCheck(uint256 fees, address token);

	// Events for Misc
	event WithdrawnNative(address tresory, uint256 amount);
	event EditedTeamMultisig(address indexed teamMultisig);

	// Constructor
	constructor(address _silver, address _teamMultisig, address _automate) AutomateTaskCreator(_automate) Ownable(msg.sender) {
		MAX_SUPPLY = (YEARLY_FARMS_SUPPLY * 9) + TEAM_SUPPLY + LIQUIDITY_SUPPLY + PRESALES_SUPPLY;
		silver = ISilver(_silver);
		teamMultisig = _teamMultisig;
    }


	// Mint system

	/**
	 * @dev Mint function
	 * @param _to Address of user
	 * @param _amount Amount of tokens to mint
	 */
	function mint(address _to, uint256 _amount) private {
		require(IERC20(address(silver)).totalSupply() + _amount <= MAX_SUPPLY, "Max supply reached");

		silver.mint(_to, _amount);
		
		emit Minted(_to, _amount);
	}

	/**
	 * @dev Start minting for team and liquidity
	 * @notice Only owner can call this function once
	 */
	bool mintStarted = false;
	function startSilverMint() public onlyOwner {
		require(!mintStarted, "Mint already started");
		mintStarted = true;

		mint(teamMultisig, TEAM_SUPPLY);
		mint(teamMultisig, LIQUIDITY_SUPPLY);

		farmsMint = FarmsMint(teamMultisig, 0, YEARLY_FARMS_SUPPLY / 365, 9, 365, 0, bytes32(""));
		_mintFarms();
		createTaskMintFarms();
	}


	// Farm's mint

	/**
	 * @dev Mint for farms (internal function)
	 */
	function _mintFarms() private {
		farmsMint.minted += farmsMint.toMintPerDay;
		farmsMint.daysLeft--;
		farmsMint.lastExecution = block.timestamp;
		mint(farmsMint.farmMultisig, farmsMint.toMintPerDay);

		emit FarmMinted(farmsMint.farmMultisig, farmsMint.toMintPerDay, farmsMint.minted);
	}

	/**
	 * @dev Mint for farms (daily function by Gelato)
	 */
	function mintFarms() public onlyDedicatedMsgSender {
		require(farmsMint.yearsLeft > 0, "No more mints left");
		require(block.timestamp - (farmsMint.lastExecution - 1 hours) >= 1 days, "Mint only once per day");

		if (farmsMint.daysLeft == 1) {
			farmsMint.yearsLeft--;
			farmsMint.daysLeft = 366; //365, + 1 for leap year
		}
		if (farmsMint.yearsLeft == 0) {
			cancelTaskMintFarms();
			farmsMint.daysLeft = 1;
		}

		_mintFarms();

		(uint256 fee, address feeToken) = _getFeeDetails();

        _transfer(fee, feeToken);
		emit GelatoFeesCheck(fee, feeToken);
	}


	// Presales

	/**
	 * @dev Mint for presales (internal function)
	 * @param _to Address of user
	 */
	function _mintPresales(address _to) private {
		presalesMint[_to].minted += presalesMint[_to].toMintPerDay;
		presalesMint[_to].lastExecution = block.timestamp;
		PRESALES_MINTED += presalesMint[_to].toMintPerDay;
		mint(_to, presalesMint[_to].toMintPerDay);

		emit PresalesMinted(_to, presalesMint[_to].toMintPerDay, presalesMint[_to].minted);
	}

	/**
	 * @dev Mint for presales for specific user (daily function executed by Gelato)
	 * @param _to Address of user
	 */
	function mintPresales(address _to) public onlyDedicatedMsgSender {
		require(presalesMint[_to].amountPurchased > 0, "No presales bought");
		require(presalesMint[_to].toMintPerDay > 0 || presalesMint[_to].minted < presalesMint[_to].amountPurchased, "No more presales to mint");
		require(block.timestamp - (presalesMint[_to].lastExecution - 1 hours) >= 1 days, "Mint only once per day");
		
		if (PRESALES_MINTED >= PRESALES_SUPPLY) {
			cancelTaskMintPresales(_to);
			return;
		}
		
		if(presalesMint[_to].minted + presalesMint[_to].toMintPerDay > presalesMint[_to].amountPurchased)
			presalesMint[_to].toMintPerDay = presalesMint[_to].amountPurchased - presalesMint[_to].minted;
		if (PRESALES_MINTED + presalesMint[_to].toMintPerDay > PRESALES_SUPPLY)
			presalesMint[_to].toMintPerDay = PRESALES_SUPPLY - PRESALES_MINTED;
		
		_mintPresales(_to);

		if (presalesMint[_to].minted == presalesMint[_to].amountPurchased || PRESALES_MINTED == PRESALES_SUPPLY) {
			presalesMint[_to].toMintPerDay = 0;
			cancelTaskMintPresales(_to);
		}
		
		(uint256 fee, address feeToken) = _getFeeDetails();
        _transfer(fee, feeToken);

		emit GelatoFeesCheck(fee, feeToken);
	}

	/**
	 * @dev Add user to presales (from SilverPresales)
	 * @param _to Address of user
	 * @param _amount Amount of tokens to mint (at 0.75% per day)
	 */
	function addPresalesUser(address _to, uint256 _amount) public onlyOwner {
		require(PRESALES_TO_MINT + _amount <= PRESALES_SUPPLY, "Max presales supply reached");
		require(presalesMint[_to].amountPurchased == 0, "User already added");
		require(_amount >= 10 ether, "amount too low (min 10 $AG)");

		PRESALES_TO_MINT += _amount;
		presalesMint[_to] = PresalesMint(0, ((_amount * 10) * 75) / 100000, _amount, 0, bytes32(""));
		_mintPresales(_to);
		createTaskMintPresales(_to);

		emit PresalesAddedUser(_to, _amount);
	}


	// Gelato functions

	/**
	 * @dev Create task for minting farms
	 */
	function createTaskMintFarms() private {
		require(farmsMint.taskId == bytes32(""), 'Task already created.');

		uint256 execTime = 1 days;

		bytes memory execData = abi.encodeCall(this.mintFarms, ());

		ModuleData memory moduleData = ModuleData({
			modules: new Module[](2),
			args: new bytes[](2)
		});

		moduleData.modules[0] = Module.PROXY;
		moduleData.modules[1] = Module.TRIGGER;
	
		moduleData.args[0] = _proxyModuleArg();
		moduleData.args[1] = _timeTriggerModuleArg(
			uint128(farmsMint.lastExecution + execTime) * 1000, 
			uint128(execTime) * 1000
		);

		bytes32 taskId = _createTask(address(this), execData, moduleData, ETH);
	
		farmsMint.taskId = taskId;
		
		emit GelatoTaskCreated(taskId);
	}
	
	/**
	 * @dev Cancel task for minting farms (when farms are fully minted (9 years))
	 */
	function cancelTaskMintFarms() private {
		bytes32 taskId = farmsMint.taskId;
		if (taskId == bytes32("")) return;

		_cancelTask(taskId);
		
		farmsMint.taskId = bytes32("");
		
		emit GelatoTaskCanceled(taskId);
	}

	/**
	 * @dev Create task for minting presales for specific user
	 * @param _to Address of user
	 */
	function createTaskMintPresales(address _to) private {
		require(presalesMint[_to].taskId == bytes32(""), 'Task already created.');

		uint256 execTime = 1 days;

		bytes memory execData = abi.encodeCall(this.mintPresales, (_to));

		ModuleData memory moduleData = ModuleData({
			modules: new Module[](2),
			args: new bytes[](2)
		});

		moduleData.modules[0] = Module.PROXY;
		moduleData.modules[1] = Module.TRIGGER;
	
		moduleData.args[0] = _proxyModuleArg();
		moduleData.args[1] = _timeTriggerModuleArg(
			uint128(presalesMint[_to].lastExecution + execTime) * 1000, 
			uint128(execTime) * 1000
		);

		bytes32 taskId = _createTask(address(this), execData, moduleData, ETH);
	
		presalesMint[_to].taskId = taskId;
		
		emit GelatoTaskCreated(taskId);
	}

	/**
	 * @dev Cancel task for minting presales for specific user (when presales are fully minted)
	 * @param _to Address of user
	 */
	function cancelTaskMintPresales(address _to) private {
		bytes32 taskId = presalesMint[_to].taskId;
		if (taskId == bytes32("")) return;

		_cancelTask(taskId);
		
		presalesMint[_to].taskId = bytes32("");
		
		emit GelatoTaskCanceled(taskId);
	}


	// Internal functions

	function editMultisig(address newMultisig) public onlyMultisig {
		teamMultisig = newMultisig;
		farmsMint.farmMultisig = newMultisig;
		emit EditedTeamMultisig(newMultisig);
	}

	function withdrawNative() public onlyOwner {
		uint256 balance = address(this).balance;
        require(balance > 0, 'No Native to withdraw');

		address payable _tresory = payable(teamMultisig);
		(bool success, ) = _tresory.call{value:balance}("");
		require(success, "Transaction failed");

		emit WithdrawnNative(_tresory, balance);
	}
	

	// modifiers

	modifier onlyMultisig() {
		require(msg.sender == teamMultisig, 'Not authorized');
		_;
	}


	// Receive function (to receive FTM)

	receive() external payable {}
}