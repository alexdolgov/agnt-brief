pragma solidity ^0.8.7;

import "./Aggregator.sol";
import "./interfaces/INodeCapitalVault.sol";
import "./interfaces/IERC721AQueryable.sol";

contract AggregatorV2 is Aggregator {
    address public dao;
    INodeCapitalVault public nodeCapitalVault;
    uint256 public totalUnwithdrawAmounts;
    mapping(uint256=>uint256) public withdrawAmounts;
    mapping(uint256 => bool) public isReport;

    uint256 public constant daoClCommissionRate = 1000;
    uint256 public daoRewards;
    bool public allowClaim;

    uint256 public constant MIN_REPORT_AMOUNT = 32 ether;
    uint256 public constant MAX_REPORT_AMOUNT = 33 ether;

    event DaoChanged(address _before, address _after);
    event NodeCapitalVaultChanged(address _before, address _after);
    event TotalUnwithdrawAmountsChanged(uint256 _before, uint256 _after);
    event ExitStatusReported(uint256[] tokenIds, uint256[] amounts);
    event ExitStatusReset(uint256[] tokenIds, uint256[] amounts);
    event ETHClaim(address owner, uint256 amount);
    event CanClaim();
    event DaoRewardsClaim(address to, uint256 amount);

    modifier onlyAllowClaim() {
        require(allowClaim, "Claim not turned on");
        _;
    }

    function startClaim() public onlyDao{
        allowClaim = true;
        emit CanClaim();
    }

    modifier onlyDao() {
        require(dao == msg.sender, "Insufficient permissions");
        _;
    }

    function initializeV2(address dao_, address nodeCapitalVault_) public reinitializer(3) onlyOwner {
        _setDao(dao_);
        _setNodeCapitalVaultContract(nodeCapitalVault_);
    }
    
    function setDao(address dao_) external onlyOwner {
        _setDao(dao_);
    }

    function _setDao(address dao_) internal {
        require(dao_ != address(0), "DAO address provided invalid");
        emit DaoChanged(dao, dao_);
        dao = dao_;
    }

    function setNodeCapitalVaultContract(address nodeCapitalVault_) external onlyDao {
        _setNodeCapitalVaultContract(nodeCapitalVault_);
    }

    function _setNodeCapitalVaultContract(address nodeCapitalVault_) internal {
        require(nodeCapitalVault_ != address(0), "nodeCapitalVault_ address provided invalid");
        emit NodeCapitalVaultChanged(address(nodeCapitalVault), nodeCapitalVault_);
        nodeCapitalVault = INodeCapitalVault(nodeCapitalVault_);
    }

    function resetExitStatus(uint256[] calldata tokenIds, uint256[] calldata amounts) public onlyDao {
        require(tokenIds.length == amounts.length, "parameter error");
        uint256 totalReportAmounts = 0;
        uint256 totalBeforeReportAmounts = 0;
        for (uint256 i = 0; i < tokenIds.length; ++i) {
            uint256 tokenId = tokenIds[i];
            require(isReport[tokenId], "tokenId not reported");
            
            uint256 beforeAmount = withdrawAmounts[tokenId];
            require(beforeAmount != 0, "tokenId may claimed");
            totalBeforeReportAmounts += beforeAmount;
            uint256 _amount = amounts[i];
            require(_amount >= MIN_REPORT_AMOUNT && _amount <= MAX_REPORT_AMOUNT, "wrong reported amount");
            withdrawAmounts[tokenId] = _amount;
            totalReportAmounts += _amount;
        }

        totalUnwithdrawAmounts -= totalBeforeReportAmounts;
        require((totalReportAmounts + totalUnwithdrawAmounts) <= address(nodeCapitalVault).balance, "amounts check failed");
        totalUnwithdrawAmounts += totalReportAmounts;
        emit ExitStatusReset(tokenIds, amounts);
    }
    
    // Check if the tokenid has been reported
    // Check if tokenid exists
    // Check if the vault contract balance is equal to unclaimed + amounts
    // Report is successful, update isReport to true; update withdrawAmounts; add totalUnwithdrawAmounts
    function reportExitStatus(uint256[] calldata tokenIds, uint256[] calldata amounts) public onlyDao {
        require(tokenIds.length == amounts.length, "parameter error");
        uint256 totalReportAmounts = 0;
        for (uint256 i = 0; i < tokenIds.length; ++i) {
            uint256 tokenId = tokenIds[i];
            require(!isReport[tokenId], "tokenId already reported");
            // tokenid is exist
            nftContract.gasHeightOf(tokenId);
            uint256 _amount = amounts[i];
            require(_amount >= MIN_REPORT_AMOUNT && _amount <= MAX_REPORT_AMOUNT, "wrong reported amount");

            withdrawAmounts[tokenId] = _amount;
            totalReportAmounts += _amount;
            isReport[tokenId] = true;
        }

        require((totalReportAmounts + totalUnwithdrawAmounts) <= address(nodeCapitalVault).balance, "amounts check failed");
        totalUnwithdrawAmounts += totalReportAmounts;
        emit ExitStatusReported(tokenIds, amounts);
    }

    // Check if the tokenid has been reported
    // Get the owner of the tokenid
    // Update withdrawAmounts to 0; decrease totalUnwithdrawAmounts
    // Receive executive layer rewards
    // Burn vNFT
    // Receive consensus layer funds
    function claimETH(uint256 claimNumber) public onlyAllowClaim {
        address nftOwner = msg.sender;
        uint256[] memory tokenIds = getCanClaimOfOwner(nftOwner);
        require(tokenIds.length != 0, "no tokenId can be claimed");
        
        uint256 totalClaimAmounts = 0;
        uint256 claimAmount = 0;
        uint256 daoAmount = 0;
        vault.settle();
        for (uint256 i = 0; i < tokenIds.length; ++i) {
            if (i >= claimNumber) {
                break;
            }

            uint256 tokenId = tokenIds[i];
            require(isReport[tokenId], "tokenId not reported");
            
            uint256 amount = withdrawAmounts[tokenId];
            require(amount != 0, "tokenId already claim");
            
            (daoAmount, claimAmount) = _canWithdrawAmount(tokenId);
            withdrawAmounts[tokenId] = 0;
            
            daoRewards += daoAmount;
            totalClaimAmounts += claimAmount;

            rewardRoute(tokenId);

            nftContract.whiteListBurn(tokenId);
        }

        totalUnwithdrawAmounts -= totalClaimAmounts;

        nodeCapitalVault.transfer(totalClaimAmounts, nftOwner);

        emit ETHClaim(nftOwner, totalClaimAmounts);
    }

    function getCanClaimEthOfOwner(address owner) public view returns(uint256[] memory, uint256[] memory) {
        uint256[] memory _tokenIds = getCanClaimOfOwner(owner);
        uint256[] memory _rewards = new uint256[] (_tokenIds.length);
        for (uint256 i = 0; i < _tokenIds.length; ++i) {
            uint256 tokenId = _tokenIds[i];
            uint256 claimAmount = 0;
            (, claimAmount) = _canWithdrawAmount(tokenId);
            _rewards[i] = claimAmount;
        }
        
        return (_tokenIds, _rewards);
    }

    function _canWithdrawAmount(uint256 tokenId) internal view returns(uint256, uint256){
        uint256 amount = withdrawAmounts[tokenId];
        require(amount >= 32 ether, "Not enough rewards to claim");
        uint256 rewards = amount - 32 ether;
        uint256 daoReward = rewards * daoClCommissionRate / 10000;
        uint256 claimAmount = amount - daoReward;
        return (daoReward, claimAmount);
    }

    function getCanClaimOfOwner(address owner) public view returns(uint256[] memory) {
        uint256[] memory tokenIdsOfOwner = nftContract.tokensOfOwner(owner);
        uint256 canClaimNumber = 0;
        for (uint256 i = 0; i < tokenIdsOfOwner.length;  ++i) {
            uint256 tokenId = tokenIdsOfOwner[i];
            if (withdrawAmounts[tokenId] != 0) {
                canClaimNumber++;
            }
        }

        uint256[] memory canClaimTokenIds = new uint256[] (canClaimNumber);
        uint256 tokenIdsIdx = 0;
        for (uint256 i = 0; i < tokenIdsOfOwner.length;  ++i) {
            uint256 tokenId = tokenIdsOfOwner[i];
            if (withdrawAmounts[tokenId] != 0) {
                canClaimTokenIds[tokenIdsIdx++] = tokenId;
            }
        }

        return canClaimTokenIds;
    }


    function claimDaoRewards(address to) public onlyDao {
        uint256 amount = daoRewards;
        daoRewards = 0;
        totalUnwithdrawAmounts -= amount;
        nodeCapitalVault.transfer(amount, to);
        emit DaoRewardsClaim(to, amount);
    }
}