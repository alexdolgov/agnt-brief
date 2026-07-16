// SPDX-License-Identifier: MIT
pragma solidity 0.8.11;

import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";

import "../interfaces/external/IPriceSourceAll.sol";
import "../token/ERC721/MyVaultV5.sol";

import "./IVotingEscrow.sol";
import "./IVoter.sol";

contract graceVault is ReentrancyGuard, VaultNFTv5 {
    using SafeERC20 for ERC20;

    /// @dev Constants used across the contract.
    uint256 constant TEN_THOUSAND = 10000;
    uint256 constant ONE_YEAR = 31556952;
    uint256 constant THOUSAND = 1000;
    uint256 public gracePeriod = 24 hours;

    IPriceSource public ethPriceSource;

    uint256 public _minimumCollateralPercentage;

    uint256 public vaultCount;

    uint256 public minDebt;
    uint256 public maxDebt;

    uint256 public constant tokenPeg = 1e8; // $1

    uint256 public iR;

    mapping(uint256 => uint256) public vaultCollateral;
    mapping(uint256 => uint256) public collateralToVaultId;
    mapping(uint256 => uint256) public accumulatedVaultDebt;

    mapping(uint256 => uint256) public lastInterest;
    mapping(uint256 => uint256) public promoter;

    uint256 public adminFee; // 10% of the earned interest
    uint256 public refFee; // 90% of the earned interest

    IVotingEscrow public collateral;

    IVoter public voter;

    ERC20 public mai;

    uint256 public decimalDifferenceRaisedToTen;

    uint256 public priceSourceDecimals;
    uint256 public totalBorrowed;

    uint256 public maiDebt;

    mapping(uint256 => uint256) liqWatch;

    address public stabilityPool;
    address public adm;
    address public ref;
    address public router;
    uint8 public version = 8;

    event CreateVault(uint256 vaultID, address creator);
    event DestroyVault(uint256 vaultID);
    event DepositCollateral(uint256 vaultID, uint256 amount);
    event WithdrawCollateral(uint256 vaultID, uint256 amount);
    event BorrowToken(uint256 vaultID, uint256 amount);
    event PayBackToken(uint256 vaultID, uint256 amount);

    constructor(
        address ethPriceSourceAddress,
        uint256 minimumCollateralPercentage,
        string memory name,
        string memory symbol,
        address _mai,
        address _collateral,
        string memory baseURI
    ) VaultNFTv5(name, symbol, baseURI) {
        
        require(ethPriceSourceAddress != address(0));
        require(minimumCollateralPercentage != 0);

        ethPriceSource = IPriceSource(ethPriceSourceAddress);
        stabilityPool = address(0);
        
        maxDebt = 500000 ether; //Keeping maxDebt at 500K * 10^(18)

        _minimumCollateralPercentage = minimumCollateralPercentage;

        collateral = IVotingEscrow(_collateral);
        mai = ERC20(_mai);
        priceSourceDecimals = 8;
        
        /*
            This works only for collaterals with decimals < 18
        */
        decimalDifferenceRaisedToTen =
            10**(mai.decimals() - collateral.decimals());
        
        adm = msg.sender;
        ref = msg.sender;

        voter = IVoter(0x16613524e02ad97eDfeF371bC883F2F5d6C480A5);
    }

    modifier onlyVaultOwner(uint256 vaultID) {
        require(_exists(vaultID), "Vault does not exist");
        require(ownerOf(vaultID) == msg.sender, "Vault is not owned by you");
        _;
    }

    modifier onlyRouter() {
        require(
            router == address(0) || msg.sender == router,
            "must use router"
        );
        _;
    }

    modifier vaultExists(uint256 vaultID) {
        require(_exists(vaultID), "Vault does not exist");
        _;
    }

    modifier frontExists(uint256 vaultID) {
        require(_exists(vaultID), "front end vault does not exist");
        require(promoter[vaultID] <= TEN_THOUSAND && promoter[vaultID] > 0, "Front end not added");
        _;
    }

    /**
     * @notice Checks if a vault is below the minimum collateral percentage and starts the liquidation watching period.
     * @dev If the collateral percentage is below the minimum threshold, it sets a liquidation watch timestamp.
     * If the collateral percentage is above the threshold, it clears any existing liquidation watch.
     * This function is used to track vaults for the grace period before liquidation.
     * @param vaultId The ID of the vault to check for liquidation status.
     */
    function checkWatching(uint256 vaultId) public {
        bool isLiquidatable = checkLiquidation(vaultId);
        liqWatch[vaultId] = isLiquidatable ? block.timestamp + gracePeriod : 0;
    }

    function liquidationWatch(uint256 vaultId) public view returns (uint256) {
        return liqWatch[vaultId];
    }

    /// @notice Return the current debt available to borrow.
    /// @dev checks the outstanding balance of the borrowable asset within the contract.
    /// @return available balance of borrowable asset.
    function getDebtCeiling() public view returns (uint256) {
        return mai.balanceOf(address(this));
    }

    /// @param vaultID is the token id of the vault being checked.
    /// @notice Returns true if a vault exists
    /// @dev the erc721 spec allows users to burn/destroy their nft
    /// @return boolean if the vault exists
    function exists(uint256 vaultID) external view returns (bool) {
        return _exists(vaultID);
    }
    
    /// @notice Returns the total value locked in the vault, based on the oracle price.
    /// @return uint256 total value locked in vault
    function getTotalValueLocked() external pure returns (uint256) {
        // Kept the function in case ui 
        // Broken bc its split between many NFTs, shouldn't query this on chain.
        return ( 0 );
    }

    /// @notice Return the peg maintained by the vault.
    /// @return uint256 is the value with 8 decimals used to calculate borrowable debt.
    function getTokenPriceSource() public pure returns (uint256) {
        return tokenPeg;
    }

    /// @notice Return the collateral value
    /// @return uint256 is the value retrieved from the oracle used
    /// to calculate the available borrowable amounts.
    function getEthPriceSource() public view returns (uint256) {
        return ethPriceSource.latestAnswer();
    }

    /// @param vaultID is the token id of the vault being checked.
    /// @notice Returns the debt owned by the vault and the interest accrued over time.
    /// @return uint256 fee earned in the time between updates
    /// @return uint256 debt owed by the vault for further calculation.
    function _vaultDebtAndFee(uint256 vaultID)
        internal
        view
        returns (uint256, uint256)
    {
        uint256 currentTime = block.timestamp;
        uint256 debt = accumulatedVaultDebt[vaultID];
        uint256 fee = 0;
        if (lastInterest[vaultID] != 0 && iR > 0) {
            uint256 timeDelta = currentTime - lastInterest[vaultID];

            uint256 feeAccrued = (((iR * debt) * timeDelta) / ONE_YEAR) / TEN_THOUSAND;
            fee = feeAccrued;
            debt = feeAccrued + debt;
        }
        return (fee, debt);
    }

    /// @param vaultID is the token id of the vault being checked.
    /// @notice Returns the debt owned by the vault without tracking the interest
    /// @return uint256 debt owed by the vault for further calculation.
    function vaultDebt(uint256 vaultID) public view returns (uint256) {
        (, uint256 debt) = _vaultDebtAndFee(vaultID);
        return debt;
    }

    /// @param vaultID is the token id of the vault being checked.
    /// @notice Adds the interest charged to the vault over the previous time called.
    /// @return uint256 latest vault debt
    function updateVaultDebt(uint256 vaultID) public returns (uint256) {
        (uint256 fee, uint256 debt) = _vaultDebtAndFee(vaultID);

        checkWatching(vaultID);

        maiDebt = maiDebt + fee;

        totalBorrowed = totalBorrowed + fee;

        if(iR > 0) {
            lastInterest[vaultID] = block.timestamp;
        }

        // we can just update the current vault debt here instead
        accumulatedVaultDebt[vaultID] = debt;

        return debt;
    }
    /// @notice Calculates the discount percentage for a given lock balance
    /// @param _collateralId The collateral ID
    /// @return uint256 The discount percentage (0-75)
    function _getDiscountPercentage(uint256 _collateralId) 
        internal 
        view 
        returns (uint256)
    {
        IVotingEscrow.LockedBalance memory bal = collateral.locked(_collateralId);
        if (bal.isPermanent) {
            return 75; // Maximum discount for permanent locks
        } else {
            uint256 lockDurationInSeconds = bal.end > block.timestamp ? bal.end - block.timestamp : 0;
            uint256 discountPercentage = (lockDurationInSeconds * 75) / (4 * 365 * 24 * 60 * 60);
            return discountPercentage > 75 ? 75 : discountPercentage;
        }
    }

    /// @notice Returns the discount percentage for a given vault
    /// @param vaultID The ID of the vault
    /// @return uint256 The discount percentage (0-75)
    function getVaultDiscountPercentage(uint256 vaultID) public view returns (uint256) {
        return _getDiscountPercentage(vaultCollateral[vaultID]);
    }

    /// @param _collateralId is the token Id in aero
    /// @param _debt is the debt owed by the vault.
    /// @notice Returns collateral value and debt based on the oracle prices
    /// @return uint256 coolateral value * 100. used to calculate the CDR
    /// @return uint256 debt value. Uses token price source to derive.
    function calculateCollateralProperties(uint256 _collateralId, uint256 _debt)
        private
        view
        returns (uint256, uint256)
    {
        uint256 _collateral = collateral.balanceOfNFT(_collateralId);
        uint256 discountPercentage = _getDiscountPercentage(_collateralId);
        uint256 discountedTokenPrice = (getEthPriceSource() * (100 - discountPercentage)) / 100;
        uint256 collateralValue = _collateral * discountedTokenPrice * decimalDifferenceRaisedToTen;
        return (collateralValue * 100, _debt * getTokenPriceSource());
    }


    /// @param _collateral is the nft id for the collateral we're holding
    /// @param debt is the debt owed by the vault.
    /// @notice Calculates if the CDR is valid before taking a further action with a user
    /// @return boolean describing if the new CDR is valid.
    function isValidCollateral(uint256 _collateral, uint256 debt)
        public
        view
        returns (bool)
    {
        (
            uint256 collateralValueTimes100,
            uint256 debtValue
        ) = calculateCollateralProperties(_collateral, debt);

        uint256 collateralPercentage = collateralValueTimes100 / debtValue;
        return collateralPercentage >= _minimumCollateralPercentage;
    }

    /// @notice Creates a new ERC721 Vault NFT
    /// @return uint256 the token id of the vault created.
    function createVault() public returns (uint256) {
        uint256 id = vaultCount;
        vaultCount = vaultCount + 1;
        require(vaultCount >= id);
        _mint(msg.sender, id);
        emit CreateVault(id, msg.sender);
        return id;
    }

    /// @notice Destroys an ERC721 Vault NFT
    /// @param vaultID the vault ID to destroy
    /// @dev vault must not have any debt owed to be able to be destroyed.
    function destroyVault(uint256 vaultID)
        external
        onlyVaultOwner(vaultID)
        nonReentrant
    {
        require(vaultDebt(vaultID) == 0, "Vault has outstanding debt");
        uint256 collateralId = vaultCollateral[vaultID];

        if (collateralId != 0) {
            // withdraw leftover collateral
            collateral.safeTransferFrom(address(this), ownerOf(vaultID), collateralId);
        }

        _burn(vaultID);

        delete vaultCollateral[vaultID];
        delete collateralToVaultId[collateralId];
        
        delete accumulatedVaultDebt[vaultID];
        delete lastInterest[vaultID];

        emit DestroyVault(vaultID);
    }

    /// @param vaultID is the token id of the vault being interacted with.
    /// @param id is the id of the nft collateral to deposit from msg.sender
    /// @notice Adds collateral to a specific vault by token id
    /// @dev Any address can deposit into a vault
    function depositCollateral(uint256 vaultID, uint256 id)
        external
        vaultExists(vaultID)
        onlyRouter
    {
        require(vaultCollateral[vaultID] == 0, "Vault already has an NFT deposited");

        vaultCollateral[vaultID] = id;
        collateralToVaultId[id] = vaultID;

        collateral.safeTransferFrom(msg.sender, address(this), id);

        emit DepositCollateral(vaultID, id);
    }

    /// @param vaultID is the token id of the vault being interacted with.
    /// @notice Withdraws collateral from a specific vault by token id
    /// @dev If there is debt, then it cannot withdraw
    function withdrawCollateral(uint256 vaultID)
        external
        onlyVaultOwner(vaultID)
        nonReentrant
    {
        uint256 id = vaultCollateral[vaultID];
        require(id != 0, "Vault has no NFT collateral deposited");

        uint256 debt = updateVaultDebt(vaultID);
        require(debt == 0, "Vault has outstanding debt");

        vaultCollateral[vaultID] = 0;
        collateral.safeTransferFrom(address(this), msg.sender, id);
        delete collateralToVaultId[id];
        emit WithdrawCollateral(vaultID, id);
    }

    /// @param vaultID is the token id of the vault being interacted with.
    /// @param amount is the amount of borrowable asset to borrow
    /// @notice borrows asset based on the collateral held and the price of the collateral.
    /// @dev Borrowing is limited by the CDR of the vault
    /// If there's opening fee, it will be charged here.
    function borrowToken(
        uint256 vaultID,
        uint256 amount,
        uint256 _front
    ) external 
    frontExists(_front) 
    onlyVaultOwner(vaultID) 
    nonReentrant
    {

        require(amount > 0, "Must borrow non-zero amount");
        require(
            amount <= getDebtCeiling(),
            "borrowToken: Cannot mint over available supply."
        );

        uint256 newDebt = updateVaultDebt(vaultID) + amount;

        require(newDebt<=maxDebt, "borrowToken: max loan cap reached.");

        require(newDebt > vaultDebt(vaultID));

        require(
            isValidCollateral(vaultCollateral[vaultID], newDebt),
            "Borrow would put vault below minimum collateral percentage"
        );

        require(
            ((vaultDebt(vaultID)) + amount) >= minDebt,
            "Vault debt can't be under minDebt"
        );

        accumulatedVaultDebt[vaultID] = newDebt;
        
        // mai
        mai.safeTransfer(msg.sender, amount);
        totalBorrowed = totalBorrowed + (amount);

        emit BorrowToken(vaultID, amount);
    }

    function paybackTokenAll(
        uint256 vaultID,
        uint256 deadline,
        uint256 _front
    ) external frontExists(_front) vaultExists(vaultID) onlyRouter {
        require(
            deadline >= block.timestamp,
            "paybackTokenAll: deadline expired."
        );

        uint256 _amount = updateVaultDebt(vaultID);
        payBackToken(vaultID, _amount, _front);
    }

    /// @param vaultID is the token id of the vault being interacted with.
    /// @param amount is the amount of borrowable asset to repay
    /// @param _front is the front end that will get the opening
    /// @notice payback asset to close loan.
    /// @dev If there is debt, then it can only withdraw up to the min CDR.
    function payBackToken(
        uint256 vaultID,
        uint256 amount,
        uint256 _front
    ) public frontExists(_front) vaultExists(vaultID) onlyRouter {
        require(mai.balanceOf(msg.sender) >= amount, "Token balance too low");

        uint256 vaultDebtNow = updateVaultDebt(vaultID);

        require(
            vaultDebtNow >= amount,
            "Vault debt less than amount to pay back"
        );

        require(
            ((vaultDebtNow) - amount) >= minDebt || amount == (vaultDebtNow),
            "Vault debt can't be under minDebt"
        );

        accumulatedVaultDebt[vaultID] = vaultDebtNow - amount;
        
        totalBorrowed = totalBorrowed - amount;

        //mai
        mai.safeTransferFrom(msg.sender, address(this), amount);
        
        emit PayBackToken(vaultID, amount);
    }

    /// @param vaultID is the token id of the vault being interacted with.
    /// @notice Calculates the collateral percentage of a vault.
    function checkCollateralPercentage(uint256 vaultID)
        public
        view
        vaultExists(vaultID)
        returns (uint256)
    {
        uint256 vaultDebtNow = vaultDebt(vaultID);

        if (vaultCollateral[vaultID] == 0 || vaultDebtNow == 0) {
            return 0;
        }
        (
            uint256 collateralValueTimes100,
            uint256 debtValue
        ) = calculateCollateralProperties(
                vaultCollateral[vaultID],
                vaultDebtNow
            );

        return collateralValueTimes100 / (debtValue);
    }

    function checkLiquidation(uint256 vaultID)
        public
        view
        vaultExists(vaultID)
        returns (bool)
    {
        uint256 vaultDebtNow = vaultDebt(vaultID);
        if (vaultCollateral[vaultID] == 0 || vaultDebtNow == 0) return false;
        (uint256 collateralValueTimes100, uint256 debtValue) = calculateCollateralProperties(vaultCollateral[vaultID], vaultDebtNow);
        return collateralValueTimes100 / debtValue < _minimumCollateralPercentage;
    }

    /// @param vaultID is the token id of the vault being interacted with.
    /// @notice Pays back the debt owed to bring it back to min CDR.
    /// And transfers ownership of it to the liquidator with a new vault
    /// @return uint256 new vault created with the debt and collateral.
    /// @dev this function can only be called if vault CDR is under the bonus ratio.
    /// address who calls it will now own the debt and the collateral.
    function buyRiskDebtVault(uint256 vaultID) external vaultExists(vaultID) nonReentrant returns(uint256) {
        require(
            stabilityPool == address(0) || msg.sender == stabilityPool,
            "buy risky is disabled for public"
        );        

        uint256 vaultDebtNow = updateVaultDebt(vaultID);

        require(vaultDebtNow != 0, "Vault debt is 0");

        (
            uint256 collateralValueTimes100,
            uint256 debtValue
        ) = calculateCollateralProperties(
                vaultCollateral[vaultID],
                vaultDebtNow
            );

        uint256 collateralPercentage = collateralValueTimes100 / (debtValue);

        require(
            (
                (collateralPercentage <= _minimumCollateralPercentage)
                    && (collateralPercentage < ((_minimumCollateralPercentage) / 2) + 50)
                    || (block.timestamp > liqWatch[vaultID])
            ),
            "Vault is not below risky collateral percentage"
        );

        uint256 maiDebtTobePaid = (debtValue / (10**priceSourceDecimals)) - 
                                    (collateralValueTimes100 / 
                                    ( _minimumCollateralPercentage * (10**priceSourceDecimals)));

        liqWatch[vaultID] = 0;
        //have enough MAI to bring vault to X CDR (presumably min)
        require(mai.balanceOf(msg.sender) >= maiDebtTobePaid, "Not enough mai to buy the risky vault");
        //mai
        mai.safeTransferFrom(msg.sender, address(this), maiDebtTobePaid);
        totalBorrowed = totalBorrowed - (maiDebtTobePaid);
        // newVault for msg.sender
        uint256 newVault = createVault();
        // updating vault collateral and debt details for the transfer of risky vault
        vaultCollateral[newVault] = vaultCollateral[vaultID];
        collateralToVaultId[vaultCollateral[vaultID]] = newVault;
        accumulatedVaultDebt[newVault] = vaultDebtNow - maiDebtTobePaid;
        lastInterest[newVault] = block.timestamp;
        // resetting the vaultID vault info
        delete vaultCollateral[vaultID];
        delete accumulatedVaultDebt[vaultID];
        // lastInterest of vaultID would be block.timestamp, not reseting its timestamp
        return newVault;
    }

    /**
     * @notice Extends the lock time of the collateral and checks for liquidation status at the end.
     * @param vaultID The ID of the vault for which to extend the lock time.
     * @param additionalTime The additional lock time in seconds to add to the current lock period.
     * @dev This function can only be called by the vault owner.
     * @dev After extending the lock time, it checks if the vault is still not liquidatable.
     */
    function extendLockTimeAndCheckLiquidation(uint256 vaultID, uint256 additionalTime) external onlyVaultOwner(vaultID) {
        require(additionalTime > 0, "Additional time must be greater than 0");
        uint256 id = vaultCollateral[vaultID];
        require(id != 0, "Vault has no NFT collateral deposited");

        IVotingEscrow.LockedBalance memory currentLock = collateral.locked(id);
        uint256 newLockEnd = currentLock.end + additionalTime;
        require(newLockEnd > block.timestamp, "New lock end must be in the future");

        // Extend lock time
        collateral.increaseUnlockTime(id, additionalTime);

        // Check if the vault is still not liquidatable after lock time extension
        bool isLiquidatable = checkLiquidation(vaultID);
        require(!isLiquidatable, "Vault is liquidatable after lock time extension");

    }

    // CLAIMING REWARDS/FEES ADD-ON(s)
    // The way they work is anyone can call but only the "owner" can recieve. 
    // We, in theory, could do the same "approval" process, so that anyone with approval for the erc721 could interact on behalf of the user (like aerodrome)

    /**
     * @notice Claims bribes for a given vault by passing through to the voter contract and sends them to the vault owner.
     * @param _bribes The addresses of the bribe contracts to claim from.
     * @param _tokens The token addresses for each bribe contract to claim.
     * @param vaultId The ID of the vault for which to claim bribes.
     * @return The amounts of each token claimed.
     */
    function claimVaultBribes(address[] calldata _bribes, address[][] calldata _tokens, uint256 vaultId)
        external
        vaultExists(vaultId)
        returns (uint256[] memory)
    {
        uint256 tokenId = vaultCollateral[vaultId];
        address vaultOwner = ownerOf(vaultId);
        uint256[] memory beforeBalances = new uint256[](_tokens.length);
        uint256[] memory claimedAmounts = new uint256[](_tokens.length);

        // Store the initial balance of each token to calculate the claimed amount
        for (uint256 i = 0; i < _tokens.length; i++) {
            beforeBalances[i] = ERC20(_tokens[i][0]).balanceOf(address(this));
        }

        // Claim the bribes
        voter.claimBribes(_bribes, _tokens, tokenId);

        for (uint256 i = 0; i < _tokens.length; i++) {
            for (uint256 j = 0; j < _tokens[i].length; j++) {
                uint256 afterBalance = ERC20(_tokens[i][j]).balanceOf(address(this));
                uint256 claimedAmount = afterBalance - beforeBalances[i];
                if (claimedAmount > 0) {
                    ERC20(_tokens[i][j]).safeTransfer(vaultOwner, claimedAmount);
                    claimedAmounts[i] += claimedAmount;
                }
            }
        }

        return claimedAmounts;
    }

    /**
     * @notice Claims fees for a given vault by passing through to the voter contract and sends them to the vault owner.
     * @param _fees The addresses of the fee contracts to claim from.
     * @param _tokens The token addresses for each fee contract to claim.
     * @param vaultId The ID of the vault for which to claim fees.
     * @return The amounts of each token claimed.
     */
    function claimVaultFees(address[] calldata _fees, address[][] calldata _tokens, uint256 vaultId)
        external
        vaultExists(vaultId)
        returns (uint256[] memory)
    {
        uint256 tokenId = vaultCollateral[vaultId];
        address vaultOwner = ownerOf(vaultId);
        uint256[] memory beforeBalances = new uint256[](_tokens.length);
        uint256[] memory claimedAmounts = new uint256[](_tokens.length);

        // Store the initial balance of each token to calculate the claimed amount
        for (uint256 i = 0; i < _tokens.length; i++) {
            beforeBalances[i] = ERC20(_tokens[i][0]).balanceOf(address(this));
        }

        // Claim the fees
        voter.claimFees(_fees, _tokens, tokenId);

        for (uint256 i = 0; i < _tokens.length; i++) {
            for (uint256 j = 0; j < _tokens[i].length; j++) {
                uint256 afterBalance = ERC20(_tokens[i][j]).balanceOf(address(this));
                uint256 claimedAmount = afterBalance - beforeBalances[i];
                if (claimedAmount > 0) {
                    ERC20(_tokens[i][j]).safeTransfer(vaultOwner, claimedAmount);
                    claimedAmounts[i] += claimedAmount;
                }
            }
        }

        return claimedAmounts;
    }

    // claiming rebases doesn't need extra functions so we're good there. users can just claim on behalf of someone else.
    // Voting needs to be done here

    /*
        Set your LPs and 100.0 (so 1000) -based voting fractions
    
        So we can split the votes by 50 points? that's the lowest needed

{
    "to": "0x16613524e02ad97edfef371bc883f2f5d6c480a5",
    "func": "vote",
    "params": [
        32158,
        [
            "0x06709C364dd4E2f5b0c10b1eBf80B2Ce483dbdC5",
            "0x2a1463CeBE85315224c536AfD389b381B43F3206"
        ],
        [
            25000000000000000000,
            75000000000000000000
        ]
    ]
}
    */

    struct VotingParams {
        address[] lpTokens;
        uint256[] percentages;
    }

    address public voting;

    VotingParams private globalParams;
    mapping(uint256 => VotingParams) private userVotes;

    /**
     * @notice Retrieves the voting parameters for a given vault.
     * @param vaultId The ID of the vault for which to retrieve the voting parameters.
     * @return lpTokens An array of liquidity pool token addresses used for voting.
     * @return percentages An array of percentages corresponding to the voting power for each LP token.
     */
    function getUserVotes(uint256 vaultId) external view returns (address[] memory lpTokens, uint256[] memory percentages) {
        VotingParams storage votingParams = userVotes[vaultId];
        return (votingParams.lpTokens, votingParams.percentages);
    }

    /**
     * @notice Retrieves the global voting parameters.
     * @return lpTokens An array of global liquidity pool token addresses used for voting.
     * @return percentages An array of percentages corresponding to the global voting power for each LP token.
     */
    function getGlobalVotes() external view returns (address[] memory lpTokens, uint256[] memory percentages) {
        return (globalParams.lpTokens, globalParams.percentages);
    }

    function _setGlobalParams(address[] calldata _lpTokens, uint256[] calldata _percentages) internal {
        require(_lpTokens.length == _percentages.length, "Mismatched inputs");
        require(_lpTokens.length > 0, "Empty input");

        uint256 totalPercentage = 0;
        for (uint256 i = 0; i < _percentages.length; i++) {
            totalPercentage += _percentages[i];
        }
        require(totalPercentage == 1000, "Total percentages must sum to 1000");

        globalParams.lpTokens = _lpTokens;
        globalParams.percentages = _percentages;
    }

    /**
     * @notice Sets the user-specific voting parameters for a given vault.
     * @dev Stores the LP tokens and their corresponding voting percentages for a vault.
     * @param vaultId The ID of the vault for which to set the voting parameters.
     * @param _lpTokens An array of liquidity pool token addresses for voting.
     * @param _percentages An array of percentages corresponding to the voting power for each LP token.
     * The percentages should sum up to 100.
     * @dev The lengths of the `_lpTokens` and `_percentages` arrays must match.
     * @dev The `_lpTokens` array cannot be empty.
     * @dev The sum of `_percentages` must equal 1000.
     */
    function setUserVotes(uint256 vaultId, address[] calldata _lpTokens, uint256[] calldata _percentages) external {
        require(ownerOf(vaultId) == msg.sender, "Only vault owner can set votes");
        require(_lpTokens.length == _percentages.length, "Mismatched inputs");
        require(_lpTokens.length > 0, "Empty input");

        uint256 totalPercentage = 0;
        for (uint256 i = 0; i < _percentages.length; i++) {
            totalPercentage += _percentages[i];
        }
        require(totalPercentage == 1000, "Total percentages must sum to 1000");

        VotingParams storage votingParams = userVotes[vaultId];
        votingParams.lpTokens = _lpTokens;
        votingParams.percentages = _percentages;
    }

    // This function now uses delegatecall to invoke the poke function, acting on behalf of the user.
    // It's open for anyone to trigger as it merely communicates the voting preferences to aerodrome without altering state.
    function manageVotes(uint256 vaultId) external {
        uint256 tokenId = vaultCollateral[vaultId];
        require(tokenId != 0, "Vault does not exist");

        (bool success,) = address(voting).delegatecall(abi.encodeWithSignature("poke(uint256)", tokenId));
        require(success, "Failed to delegate poke vote");
    }
}
