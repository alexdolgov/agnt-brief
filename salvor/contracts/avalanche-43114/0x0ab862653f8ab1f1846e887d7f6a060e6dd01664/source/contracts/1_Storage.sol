// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;
    
    import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
    import "@openzeppelin/contracts/access/Ownable.sol";
    import "@openzeppelin/contracts/security/ReentrancyGuard.sol";


interface ILBRouter {

    function removeLiquidityNATIVE(
        IERC20 token,
        uint16 binStep,
        uint256 amountTokenMin,
        uint256 amountNATIVEMin,
        uint256[] memory ids,
        uint256[] memory amounts,
        address payable to,
        uint256 deadline
    ) external returns (uint256 amountToken, uint256 amountNATIVE);
    
}

interface ILBPair {

    struct MintArrays {
        uint256[] ids;
        bytes32[] amounts;
        uint256[] liquidityMinted;
    }

    function getTokenX() external view returns (IERC20 tokenX);
    function getTokenY() external view returns (IERC20 tokenY);
    function getBinStep() external view returns (uint16 binStep);
    function getReserves() external view returns (uint128 reserveX, uint128 reserveY);
    function getActiveId() external view returns (uint24 activeId);
    function getBin(uint24 id) external view returns (uint128 binReserveX, uint128 binReserveY);
    function balanceOf(address account, uint256 id) external view returns (uint256);
    function approveForAll(address spender, bool approved) external;
    function batchTransferFrom(address from, address to, uint256[] calldata ids, uint256[] calldata amounts) external;
}

interface ILBFactory {

    struct LBPairInformation {
        uint16 binStep;
        ILBPair LBPair;
        bool createdByOwner;
        bool ignoredForRouting;
    }

    function getLBPairInformation(IERC20 tokenA, IERC20 tokenB, uint256 binStep)
        external
        view
        returns (LBPairInformation memory lbPairInformation);

}

contract LPTP is Ownable(msg.sender), ReentrancyGuard {

    mapping(address => uint256) rewards;
    address routerV21 = 0xb4315e873dBcf96Ffd0acd8EA43f689D8c20fB30;
    address routerV22 = 0x18556DA13313f3532c54711497A8FedAC273220E;
    address factoryV21 = 0x8e42f2F4101563bF679975178e880FD87d3eFd4e;
    address factoryV22 = 0xb43120c4745967fa9b93E79C149E66B0f2D6Fe0c;
    address WAVAX = 0xB31f66AA3C1e785363F0875A1B74E27b85FD66c7;
    uint8 public feesSC = 5;
    uint8 public feesSniper = 5;
    uint16 public feesPRECISION = 1000;

    event Received(address, uint);
    
    receive() external payable {
        emit Received(msg.sender, msg.value);
    }

    function getWithdrawableBins(address user, uint256 binMin, uint256 binMax, ILBPair pool) public view returns (uint256[] memory ids, uint256[] memory amounts) {

        uint24 activeId = pool.getActiveId();
        if (activeId <= binMin) {
			return (new uint256[](0), new uint256[](0));
		}
	
		uint256 lastEligibleId = activeId - 1;
	
		if (lastEligibleId > binMax) {
			lastEligibleId = binMax;
		}
	
		if (binMin > lastEligibleId) {
			return (new uint256[](0), new uint256[](0));
		}
	
		uint256 arrayLength = lastEligibleId - binMin + 1;
		ids = new uint256[](arrayLength);
		amounts = new uint256[](arrayLength);
	
		for (uint256 i = 0; i < arrayLength; i++) {
			ids[i] = binMin + i;
            amounts[i] = pool.balanceOf(user, ids[i]);
		}
	
		return (ids, amounts);

    }

    /**
    * @param factoryVersion The version of the Joe Factory
    * @notice LBRouter v2.1 > 2
    * @notice LBRouter v2.2 > 3
    */

    function getPoolBinsForUser(address user, address token, uint16 binStep, uint8 factoryVersion) external view returns(uint256 binMin, uint256 binMax) {
        ILBRouter router;
        ILBFactory factory;
        factoryVersion == 2 ? router = ILBRouter(routerV21) : router = ILBRouter(routerV22);
        factoryVersion == 2 ? factory = ILBFactory(factoryV21) : factory = ILBFactory(factoryV22);
        ILBPair pool = factory.getLBPairInformation(IERC20(WAVAX), IERC20(token), binStep).LBPair;
        uint24 activeId = pool.getActiveId();
        binMin = activeId;
        binMax = activeId;
    
        while (binMin > 0 && pool.balanceOf(user, binMin - 1) > 0) {
            binMin--;
        }

        while (pool.balanceOf(user, binMax + 1) > 0) {
            binMax++;
        }
    }

    function launchTP(address user, address token, uint16 binStep, uint256 binMin, uint256 binMax, uint8 factoryVersion) external nonReentrant {
        require(factoryVersion == 2 || factoryVersion == 3, "not available");
        ILBRouter router;
        ILBFactory factory;
        factoryVersion == 2 ? router = ILBRouter(routerV21) : router = ILBRouter(routerV22);
        factoryVersion == 2 ? factory = ILBFactory(factoryV21) : factory = ILBFactory(factoryV22);
        ILBPair pool = factory.getLBPairInformation(IERC20(WAVAX), IERC20(token), binStep).LBPair;
        (uint256[] memory ids, uint256[] memory amounts) = getWithdrawableBins(user, binMin, binMax, pool);
        pool.batchTransferFrom(user, address(this), ids, amounts);
        pool.approveForAll(address(router), true);
        (uint256 amountToken, uint256 amountNATIVE) = router.removeLiquidityNATIVE(IERC20(token), binStep, 0, 0, ids, amounts, payable(address(this)), block.timestamp);
        require(amountToken == 0, "SC Error");
        uint256 taxSC = (amountNATIVE*feesSC)/feesPRECISION;
        uint256 taxSniper = (amountNATIVE*feesSniper)/feesPRECISION;
        rewards[msg.sender] += taxSniper;
        rewards[owner()] += taxSC;
        (bool success, ) = user.call{value: amountNATIVE-taxSC-taxSniper}("");
        require(success, "Transfer failed");
    }

    function claimRewards() external nonReentrant {
        uint256 rewardsToClaim = rewards[msg.sender];
        rewards[msg.sender] = 0;
        (bool success, ) = msg.sender.call{value: rewardsToClaim}("");
        require(success, "Transfer failed");
    }

    function withdrawToken(address _token) public onlyOwner {
        IERC20(_token).transfer(msg.sender, IERC20(_token).balanceOf(address(this)));
    }

    function withdrawNATIVE() public onlyOwner {
        payable(owner()).transfer(address(this).balance);
    }

    function changeFees(uint8 _newFeesSC, uint8 _newFeesSniper) public onlyOwner {
        feesSC = _newFeesSC;
        feesSniper = _newFeesSniper;
    }
}