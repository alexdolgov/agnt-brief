pragma solidity 0.8.20;

import "./interfaces/IHypervisor.sol";
import "./proxy/admin.sol";
import "hardhat/console.sol";



contract RebalanceProxy {



    address public owner;

    uint256 public maxTranslation = 300;
    uint256 public maxWidth = 300;
    uint256 public minInterval = 1;

    mapping(address => bool) public exempted;
    mapping(address => uint256) public customDiff;
    mapping(address => uint256) public customWidth;
    mapping(address => uint256) public customInterval;
    mapping(address => uint256) public lastRebalance;
    
    mapping(address => address) public rebalancers;
    mapping(address => address) public admins;

    modifier onlyOwner() {
			require(msg.sender == owner, "only owner");
			_;
    }

    modifier onlyRebalancer(address hypervisor) {
			require(msg.sender == rebalancers[hypervisor], "only rebalancer");
			_;
    }

    constructor(address _owner) {
        owner = _owner;
    }

    function isWithinRange(
        uint256 maxTranslation,
        int24 tickSpacing,
        int24 lastLowerTick,
        int24 lastUpperTick,
        int24 newLowerTick,
        int24 newUpperTick
    ) public view returns (bool) {

        int256 lastMidPoint;
        int256 newMidPoint;

        // Calculate the mid point for the last range
        if(lastLowerTick < 0 && lastUpperTick > 0) {
            lastMidPoint = int256(lastLowerTick) + (int256(abs(int256(lastLowerTick))) + int256(lastUpperTick)) / 2;
        }
        else {
            lastMidPoint = int256(lastLowerTick) + (int256(lastUpperTick) - int256(lastLowerTick)) / 2;
        }

        // Calculate the mid point for the new range
        if(newLowerTick < 0 && newUpperTick > 0) {
            newMidPoint = int256(newLowerTick) + (int256(abs(int256(newLowerTick))) + int256(newUpperTick)) / 2;
        }
        else {
            newMidPoint = int256(newLowerTick) + (int256(newUpperTick) - int256(newLowerTick)) / 2;
        }

        // Calculate the difference between the new and last mid points
        int256 diff = newMidPoint > lastMidPoint ? newMidPoint - lastMidPoint : lastMidPoint - newMidPoint; 

        // Check if the difference is within the allowed translation range
        return diff <= int256(maxTranslation);
    }

    function isWidthChangeWithinRange(
        uint256 maxWidth,
        int24 lastLowerTick,
        int24 lastUpperTick,
        int24 newLowerTick,
        int24 newUpperTick
    ) public view returns (bool) {
        int256 oldWidth = int256(lastUpperTick) - int256(lastLowerTick);
        int256 newWidth = int256(newUpperTick) - int256(newLowerTick);
        int256 allowedWidthDiff = int256(maxWidth);
        int256 lowerWidthBound = oldWidth - allowedWidthDiff;
        int256 upperWidthBound = oldWidth + allowedWidthDiff;

        return (newWidth >= lowerWidthBound && newWidth <= upperWidthBound);
    }

    function rebalance(
        address hypervisor,
        int24 _baseLower,
        int24 _baseUpper,
        int24 _limitLower,
        int24 _limitUpper,
        address _feeRecipient,
        uint256[4] memory inMin, 
        uint256[4] memory outMin
    ) external onlyRebalancer(hypervisor) {

        // Check if the rebalance request is for a full-range position
        bool isFullRange = _baseLower <= -886800 && _baseUpper >= 886800;

        // Proceed with the rebalance operation only if the minimum interval has passed or it's a full-range adjustment
        uint256 _minInterval = customInterval[hypervisor] == 0 ? minInterval : customInterval[hypervisor];
        require(
            lastRebalance[hypervisor] == 0 || block.timestamp >= lastRebalance[hypervisor] + _minInterval || isFullRange,
            "too soon"
        );

        // If not exempted and not a full-range position, perform the standard range and width checks
        if(!exempted[hypervisor] && !isFullRange) {
            uint256 _maxTranslation = customDiff[hypervisor] == 0 ? maxTranslation : customDiff[hypervisor];
            require(
                isWithinRange(
                    _maxTranslation,
                    IHypervisor(hypervisor).tickSpacing(),
                    IHypervisor(hypervisor).baseLower(),
                    IHypervisor(hypervisor).baseUpper(),
                    _baseLower,
                    _baseUpper
            ), "Exceeds range delta");

            uint256 _maxWidth = customWidth[hypervisor] == 0 ? maxWidth : customWidth[hypervisor];
            require(
                isWidthChangeWithinRange(
                    _maxWidth,
                    IHypervisor(hypervisor).baseLower(),
                    IHypervisor(hypervisor).baseUpper(),
                    _baseLower,
                    _baseUpper
            ), "Exceeds width delta");
        }

        // Execute the rebalance operation
        Admin(admins[hypervisor]).rebalance(hypervisor, _baseLower, _baseUpper, _limitLower, _limitUpper, _feeRecipient, inMin, outMin);
        lastRebalance[hypervisor] = block.timestamp;
    }

    function updateMaxTranslation(uint256 newMaxTranslation) external onlyOwner {
        require(newMaxTranslation != 0, "should be non-zero");
        maxTranslation = newMaxTranslation;
    }

    function updateMaxWidth(uint256 newMaxWidth) external onlyOwner {
        require(newMaxWidth != 0, "should be non-zero");
        maxWidth = newMaxWidth;
    }

    function exemptHypervisor(address hypervisor) external onlyOwner {
        require(hypervisor != address(0), "hypervisor should be non-zero");
        exempted[hypervisor] = true;
    }

    function removeExemption(address hypervisor) external onlyOwner {
        require(hypervisor != address(0), "hypervisor should be non-zero");
        exempted[hypervisor] = false;
    }

    function setRebalancer(address hypervisor, address newRebalancer) external onlyOwner {
        require(newRebalancer != address(0), "newRebalancer should be non-zero");
        rebalancers[hypervisor] = newRebalancer;
    }

    function setAdmin(address hypervisor, address newAdmin) external onlyOwner {
        require(newAdmin != address(0), "newAdmin should be non-zero");
        admins[hypervisor] = newAdmin;
    }

    function setCustomDiff(address hypervisor, uint256 diff) external onlyOwner {
        customDiff[hypervisor] = diff;
    }

    function setCustomDiffWidth(address hypervisor, uint256 diffWidth) external onlyOwner {
        customWidth[hypervisor] = diffWidth;
    }

    function setMinInterval(uint256 interval) external onlyOwner {
        minInterval = interval;
    }

    function setCustomInterval(address hypervisor, uint256 interval) external onlyOwner {
        customInterval[hypervisor] = interval;
    }

    function transferOwner(address newOwner) external onlyOwner {
        require(newOwner != address(0), "newOwner should be non-zero");
        owner = newOwner;
    }

    function abs(int256 x) private pure returns (uint256) {
        return uint256(x >= 0 ? x : -x);
    }
}