// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.25;

// Openzeppelin imports
import {Math} from "openzeppelin/utils/math/Math.sol";
import {SafeERC20} from "openzeppelin/token/ERC20/utils/SafeERC20.sol";
import {ERC20} from "openzeppelin/token/ERC20/ERC20.sol";
import {IERC20} from "openzeppelin/token/ERC20/IERC20.sol";
import {IERC20Metadata} from "openzeppelin/token/ERC20/extensions/IERC20Metadata.sol";
import {IERC721} from "openzeppelin/interfaces/IERC721.sol";
import {IERC165} from "openzeppelin/interfaces/IERC165.sol";

// Line-Of-Credit-v2
import {LineLib} from "Line-Of-Credit-v2/utils/LineLib.sol";
import {MutualConsent} from "Line-Of-Credit-v2/utils/MutualConsent.sol";
import {ILineOfCredit} from "Line-Of-Credit-v2/interfaces/ILineOfCredit.sol";
import {ISpigotedLine} from "Line-Of-Credit-v2/interfaces/ISpigotedLine.sol";
import {ISecuredLine} from "Line-Of-Credit-v2/interfaces/ISecuredLine.sol";

// Vaults
import {FeeManager} from "contracts/strategies/credit/FeeManager.sol";
import {ERC721Manager} from "contracts/strategies/credit/ERC721Manager.sol";
import {ILendingVault} from "contracts/interfaces/ILendingVault.sol";
import {ICreditStrategy} from "contracts/interfaces/ICreditStrategy.sol";
import {ILiquidStrategy} from "contracts/interfaces/ILiquidStrategy.sol";

/**
 * @title  - CreditStrategy
 * @author - Credit Cooperative
 * @notice - Interacts with Line-Of-Credit-v2 contracts on behalf of depositors to LendingVault.
 * @notice - Responsible for proposing, accepting, and impairing credit positions on behalf of the LendingVault.
 * @dev    - All external and public state changing functions, with the exception of swapCreditPositionForTokens, can only be called by the vault manager or vault operator roles.
 */
contract CreditStrategy is ERC721Manager, FeeManager, ICreditStrategy {
    using SafeERC20 for ERC20;

    // LineOfCredit mappings for tracking credit positions
    mapping(address => bool) private isLine;
    mapping(address => mapping(uint256 => uint256)) public creditDeployedToPositions;
    mapping(uint256 => address) public creditTokenIdToLine;
    mapping(address => mapping(uint256 => bool)) public impairments; // impairment status of credit positions
    uint256[] public tokenIds; // token ids of all open credit positions.

    // total notional amount of underlying token owned by vault (may not be currently held in vault)
    uint256 public totalCreditDeployed;
    address public immutable asset;

    /**
     * @notice  - How to deploy a Credit Coop Vault Manager
     * @dev     - A CreditStrategy determines parameters for the LendingVault including the underlying asset of the vault, the manager and operator addresses, the protocol fee split, the performance fee, and whether to enable a whitelist or not. Then the Vault manager deploys the contract using the constuctor below.
     * @dev     - If the manager enables a whitelist, then the manager will need to whitelist addresses that can deposit assets into the vault. Once funds have been deposited into the vault, the manager will be able to deploy funds into lines of credit.
     * @param _asset            - Native asset address of the vault.
     * @param _manager          - Address that manages the vault.
     * @param _protocolTreasury - Address that accrues fees from the vault.
     * @param _protocolSplit    - Percentage of fees that accrue to the protocol treasury.
     * @param _fees             - Performance and management fees that the vault will charge.
     * @param _whitelistEnabled - Whether the vault whitelist is enabled or not.
     * @param _lendingVault     - Address of the LendingVault.
     */
    constructor(
        address _asset,
        address _manager,
        address _protocolTreasury,
        uint8 _protocolSplit,
        Fees memory _fees,
        bool _whitelistEnabled,
        address _lendingVault
    ) {
        if (_manager == address(0) || _lendingVault == address(0)) {
            revert ILendingVault.CannotBeZeroAddress();
        }

        asset = _asset;
        baseUnit = 10 ** IERC20Metadata(address(_asset)).decimals();
        highWaterMarkSharePrice = baseUnit; // set initial highWaterMarkSharePrice to baseUnit
        emit SetHighWaterMarkSharePrice(highWaterMarkSharePrice);

        manager = _manager;
        isOperator[_manager] = true;
        whitelistEnabled = _whitelistEnabled;
        emit SetWhitelistStatus(_whitelistEnabled);

        protocolTreasury = _protocolTreasury;
        lendingVault = _lendingVault;

        // assert and set protocolSplit and vault fees
        _assertMaxProtocolSplit(_protocolSplit);
        protocolSplit = _protocolSplit;
        emit UpdateProtocolSplit(protocolSplit);

        // assert and set vault fees
        _assertMaxFee(_fees.performance, FeeTypes.PERFORMANCE);
        _assertMaxFee(_fees.management, FeeTypes.MANAGEMENT);
        fees = _fees;

        lastManagementFeeTimestamp = block.timestamp;
    }

    /*///////////////////////////////////////////////////////////////
                        FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice - Checks only the `buyToken` is equivalent to CreditStrategy `asset`.
     */
    function _onlyVaultAssetSupported(address buyToken) internal view {
        if (buyToken != address(asset)) {
            revert AssetNotSupported();
        }
    }

    /**
     * @notice - Checks only callable by `lendingVault` or `manager`.
     */
    function _onlyLendingVaultOrManager() internal view {
        if (msg.sender != lendingVault && msg.sender != manager) {
            revert OnlyLendingVaultOrManager();
        }
    }

    /**
     * @notice  - Indicates the amount of the underlying token deployed into a credit position.
     * @dev     - The amount deployed into a credit position is increased when a credit position is accepted by a borrower, decreased when the vault withdraws funds from a credit position, and is also decreased when the vault impairs a credit position.
     * @param line      - Address of the line of credit.
     * @param tokenId   - Token id of the credit position.
     * @return          - Amount of the underlying token deployed into the credit position.
     */
    function getCreditDeployedToPosition(address line, uint256 tokenId) external view returns (uint256) {
        return creditDeployedToPositions[line][tokenId];
    }

    /**
     * @notice  - Approves a line of credit to spend a certain amount of the vault's assets.
     * @dev     - Only callable by the manager.
     * @param line      - Address of the line of credit to approve.
     * @param amount    - Amount of the vault's assets to approve the line of credit to spend.
     */
    function approve(address line, uint256 amount) external {
        _onlyVaultManager();
        ERC20(asset).forceApprove(line, amount);
    }

    /**
     * @notice  - Deposits assets into the CreditStrategy contract.
     * @dev     - Only callable by `lendingVault` or `manager`.
     * @param _amount - Amount to deposit (denominated in asset of the CreditStrategy contract).
     */
    function deposit(uint256 _amount) external {
        _onlyLendingVaultOrManager();
        ERC20(asset).safeTransferFrom(msg.sender, address(this), _amount);
        emit ManagerDeposit(msg.sender, _amount);
    }

    /**
     * @notice  - Withdraws assets from CreditStrategy contract and transfers them to the LendingVault.
     * @dev     - Only callable by `lendingVault` or `manager`.
     * @param _amount - Amount to withdraw (denominated in asset of the Strategy).
     */
    function withdraw(uint256 _amount) external {
        _onlyLendingVaultOrManager();
        ERC20(asset).safeTransfer(lendingVault, _amount);
        emit ManagerWithdraw(msg.sender, _amount);
    }

    /*//////////////////////////////////////////////////////////////
                SUPPORTS CreditStrategy.incrementCreditDeployed
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice - Returns true if the contract supports the CreditStrategy.incrementCreditDeployed function.
     * @param interfaceId - interface ID to check for support.
     * @return            - True if the contract supports the CreditStrategy.incrementCreditDeployed function.
     */
    function supportsInterface(bytes4 interfaceId)
        public
        pure
        returns (bool)
    {
        // Return true if the provided interfaceId matches incrementCreditDeployed
        return interfaceId == ICreditStrategy.incrementCreditDeployed.selector
            || interfaceId == type(IERC165).interfaceId;
    }


    /**
     * @notice  - Proposes, or accepts a credit position to a line of credit with the addCredit() function in LineOfCredit. Usually, the vault will be proposing a credit position to a line of credit, but the vault can also accept a credit position proposed by a borrower.
     * @dev     - Only callable by the manager. Will revert if the vault does not have sufficient liquid assets to propose the credit position. Will revert if the vault attempts to lend to a line for which it is the borrower.
     * @param line               - Address of the line of credit to propose the position to.
     * @param drate              - Drawn rate of the credit position.
     * @param frate              - Facility rate of the credit position.
     * @param amount             - Amount of assets to propose to the line of credit.
     * @param isRestricted       - Whether the credit position is restricted or not.
     * @param earlyWithdrawalFee - Early withdrawal fee of the credit position.
     * @param deadline           - Deadline of the credit position.
     * @return                   - Returns tuple (true, tokenId) if the credit position was proposed successfully, otherwise (false, 0).
     */
    function addCredit(
        address line,
        uint256 desiredNonce,
        uint128 drate,
        uint128 frate,
        uint256 amount,
        bool isRestricted,
        uint16 earlyWithdrawalFee,
        uint256 deadline
    ) external nonReentrant returns (bool, uint256 tokenId) {
        _onlyVaultManager();



        if (ILineOfCredit(line).borrower() == address(this) || ILineOfCredit(line).borrower() == address(lendingVault))
        {
            revert CannotLendToSelf();
        }

        // Add line to isLine mapping
        isLine[line] = true;

        tokenId = ILineOfCredit(line).addCredit(
            desiredNonce,
            drate,
            frate,
            amount,
            address(asset),
            address(this),
            isRestricted,
            earlyWithdrawalFee,
            deadline
        );
        return (true, tokenId);
    }

    /**
     * @notice  - Revokes vault's consent for a credit proposal (i.e. addCredit or refinanceCredit).
     * @dev     - Only callable by the `manager` or `operator`.
     * @dev     - Reverts if the function selector in the reconstructed message data is not a valid function selector for the revokeConsent() function in LineOfCredit.
     * @param line                 - Address of the line of credit to propose the position to.
     * @param tokenId              - TokenId of the credit position to revoke the proposal from.
     * @param reconstructedMsgData - The reconstructed message data of the proposal to revoke.
     */
    function revokeProposal(address line, uint256 tokenId, bytes calldata reconstructedMsgData) external nonReentrant {
        _onlyOperator();

        ISecuredLine(line).revokeConsent(tokenId, reconstructedMsgData);
    }

    /**
     * @notice  - Creates a proposal to refinance a credit position.
     * @dev     - Only callable by the manager.
     * @param line     - Address of the line of credit to make the proposal to.
     * @param tokenId  - TokenId of the credit position to refinance.
     * @param amount   - Amount of assets to add to the credit position.
     * @param dRate    - New drawn rate to set on the credit position.
     * @param fRate    - New facility rate to set on the credit position.
     * @param deadline - New deadline to propose to the credit position.
     */
    function refinanceCredit(
        address line,
        uint256 desiredNonce,
        uint256 tokenId,
        uint256 amount,
        uint128 dRate,
        uint128 fRate,
        uint256 deadline
    ) external nonReentrant returns (bool) {
        _onlyVaultManager();
        ILineOfCredit(line).refinanceCredit(desiredNonce, tokenId, amount, dRate, fRate, deadline);
        return true;
    }

    /**
     * @notice  - Repays a line of credit with the line's reserves.
     * @dev     - Only callable by the manager or operator.
     * @param line   - Address of the line of credit to repay.
     * @param amount - Amount of assets from reserves to repay the line of credit.
     */
    function useAndRepay(address line, uint256 amount) external nonReentrant {
        _onlyOperator();
        ISpigotedLine(line).useAndRepay(amount);
    }

    /**
     * @notice  - Withdraws credit from a credit position
     * @dev     - Only callable by the manager or operator.
     * @param line      - Address of the line of credit to withdraw from.
     * @param tokenId   - TokenId of the credit position to withdraw from.
     * @param amount    - Amount to withdraw from the credit position.
     *
     */
    function withdrawCredit(address line, uint256 tokenId, uint256 amount) external nonReentrant {
        _onlyOperator();
        if (amount <= 0) {
            revert NoWithdrawableAssets();
        }

        (uint256 remainingBorrowCapacity, uint256 interestRepaid) = ILineOfCredit(line).available(tokenId);
        if (amount >= interestRepaid) {
            uint256 depositToWithdraw = amount - interestRepaid;
            emit WithdrawProfit(line, tokenId, interestRepaid);
            emit WithdrawDeposit(line, tokenId, depositToWithdraw);
            _accrueFees(interestRepaid);

            totalCreditDeployed -= depositToWithdraw;
            creditDeployedToPositions[line][tokenId] -= depositToWithdraw;
            remainingBorrowCapacity -= depositToWithdraw;
            emit ReduceCreditDeployed(line, tokenId, depositToWithdraw);
        } else if (amount < interestRepaid) {
            emit WithdrawProfit(line, tokenId, amount);
            _accrueFees(amount);
        }
        ILineOfCredit(line).withdraw(tokenId, amount);
    }

    /**
     * @notice  - Impairs a credit position on a line of credit, permanently reducing totalCreditDeployed, creditDeployedToPosition[line][id], and therefore the vault's totalAssets(), by the amount of unpaid principal on the credit position.
     * @dev     - Only callable by the vault manager if the line's status is INSOLVENT.
     * @dev     - Reverts if the credit position is already impaired.
     * @param line        - Address of the line of credit to imapir.
     * @param tokenId     - Token id of the credit position to impair.
     */
    function impairCredit(address line, uint256 tokenId) external nonReentrant {
        _onlyVaultManager();

        // Reverts if line's status not INSOLVENT or ABORTED
        uint8 status = uint8(ILineOfCredit(line).status());
        if (status != uint8(LineLib.STATUS.INSOLVENT) && status != uint8(LineLib.STATUS.ABORTED)) {
            revert CannotImpairCredit();
        }

        if (impairments[line][tokenId]) {
            revert AlreadyImpaired();
        }
        if (creditDeployedToPositions[line][tokenId] == 0) {
            revert NonExistentCreditPosition();
        }

        // mark credit position on line as impaired
        impairments[line][tokenId] = true;

        // impairment equals the amount of unpaid principal on borrower's credit position
        ILineOfCredit.Credit memory credit = ILineOfCredit(line).getCreditPosition(tokenId);

        // decrease totalCreditDeployed by the unpaid principal amount
        totalCreditDeployed -= credit.principal;
        creditDeployedToPositions[line][tokenId] -= credit.principal;
        emit ReduceCreditDeployed(line, tokenId, credit.principal);
        emit CreditImpaired(line, tokenId, credit.deposit, credit.principal);
    }

    /**
     * @notice  - Updates CreditStrategy accounting for ERC-721 credit position after successful callback from a SecuredLine.
     * @dev     - Only callable by `line` in `SecuredLine.addCredit()` and `SecuredLine.refinanceCredit()`.
     * @param tokenId          - id of the credit position.
     * @param amount           - amount of underlying to deploy to the credit position.
     * @return                 - True if the credit position was successfully incremented.
     */
    function incrementCreditDeployed(uint256 tokenId, uint256 amount) public returns (bool) {
        // Reverts if caller is not the line or the line is not in the line mapping
        if (isLine[msg.sender] != true) {
            revert CallerNotLine();
        }

        // add to tokenIds if tokenId is not already in tokenIds
        if (creditTokenIdToLine[tokenId] == address(0)) {
            tokenIds.push(tokenId);
            creditTokenIdToLine[tokenId] = msg.sender;
        }

        // increment total deployed and credit extended to positions
        totalCreditDeployed += amount;
        creditDeployedToPositions[msg.sender][tokenId] += amount;
        emit CreditDeployed(msg.sender, tokenId, amount);

        return true;
    }

    /**
     * @notice  - Swaps a credit position owned by the vault for ERC20 tokens.
     * @dev     - Called via mutual consent by the manager and the buyer.
     * @param line                - Address of the line of credit where the credit position exists.
     * @param creditPositionToken - Address of the credit position token.
     * @param tokenId             - Id of the credit position to swap.
     * @param buyer               - Address of the buyer.
     * @param receiver            - Address of the receiver.
     * @param buyToken            - Address of the token to buy the credit position with. Must be the same as the vault's asset.
     * @param buyTokenAmount      - Amount of buyToken to buy the credit position with.
     */
    function swapCreditPositionForTokens(
        address line,
        address creditPositionToken,
        uint256 tokenId,
        address buyer,
        address receiver,
        address buyToken,
        uint256 buyTokenAmount
    ) external mutualConsent(manager, buyer) returns (bool) {
        _onlyVaultAssetSupported(buyToken);

        // Update Vault accounting
        _handleTransferCredit(line, tokenId, buyTokenAmount);

        // Vault transfers Credit Position Token to receiver
        IERC721(creditPositionToken).safeTransferFrom(address(this), receiver, tokenId);

        // buyer pays CreditStrategy for Credit Position Token
        ERC20(buyToken).safeTransferFrom(buyer, address(this), buyTokenAmount);
        emit SwapCreditPositionForTokens(line, tokenId, buyer, buyToken, buyTokenAmount);

        // claim and mint shares for vault management and performance fees
        _accrueFees(0);

        return true;
    }

    /**
     * @notice  - Updates Vault accounting when at least one credit position is sold/transferred to a buyer in exchange for ERC20 tokens. Calculates performance and management fees and creates new shares.
     * @dev     - Only callable by the manager or operator.
     * @dev     - Should be called before processing deposit and redeem requests.
     */
    function sync() external {
        _onlyOperator();

        // Iterate through all credit positions owned by the CreditStrategy to reset totalAssets()
        uint256 index = tokenIds.length;
        while (index > 0) {
            index--;
            uint256 tokenId = tokenIds[index];
            address line = creditTokenIdToLine[tokenId];
            address tokenContract = address(ILineOfCredit(line).tokenContract());
            uint256 creditDeployedToPosition = creditDeployedToPositions[line][tokenId];
            address tokenOwner = this.ownerOfTokenId(tokenContract, tokenId);

            // If the token owner is not the CreditStrategy, we remove the tokenId
            if (tokenOwner != address(this)) {
                totalCreditDeployed -= creditDeployedToPosition;
                creditDeployedToPositions[line][tokenId] = 0;

                emit ReduceCreditDeployed(line, tokenId, creditDeployedToPosition);

                creditTokenIdToLine[tokenId] = address(0);

                _removeTokenId(index);
            }
        }

        // accrue management and performance fees for vault manager
        _accrueFees(0);
    }

    /**
     * @notice  - Removes a tokenId from the tokenIds array without preserving the order.
     * @param index - The index of the tokenId to remove.
     */
    function _removeTokenId(uint256 index) internal {
        tokenIds[index] = tokenIds[tokenIds.length - 1]; // Overwrite the tokenId at the index with the last tokenId
        tokenIds.pop(); // Removes the last element, reducing the array's length
    }

    /*///////////////////////////////////////////////////////////////
                        RECOVERY
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice  - Transfers ERC20 tokens from the CreditStrategy contract to arbitrary `to` destination. Can be used to recover tokens not in the underlying asset or in emergency situations.
     * @dev     - Only callable by the manager.
     * @param token     - Address of the ERC20 token to recover.
     * @param to        - Address to send the recovered tokens to.
     * @param amount    - Amount of tokens to recover.
     */
    function recoverTokens(address token, address to, uint256 amount) external {
        _onlyVaultManager();
        ERC20(token).safeTransfer(to, amount);
        emit TokensRecovered(msg.sender, to, token, amount);
    }

    /*///////////////////////////////////////////////////////////////
                        INTERNAL FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice  - Updates Vault accounting to handle the transfer of a credit position from the vault to a buyer.
     * @param line             - Address of the Line of Credit to withdraw from.
     * @param tokenId          - TokenId of the credit position.
     * @param buyAmount        - Amount of tokens being used to purchase the credit position from the vault.
     * @return                 - Returns true if the vault accounting updated successfully.
     */
    function _handleTransferCredit(address line, uint256 tokenId, uint256 buyAmount) internal returns (bool) {
        ILineOfCredit.Credit memory credit = ILineOfCredit(line).getCreditPosition(tokenId);
        uint256 deposit = credit.deposit;

        // claim and mint shares for vault performance fees
        if (buyAmount > deposit) {
            uint256 profit = buyAmount - deposit;
            _accrueFees(profit);
        }

        // reduce credit deployed by the deposit
        creditDeployedToPositions[line][tokenId] -= deposit;
        totalCreditDeployed -= deposit;
        emit ReduceCreditDeployed(line, tokenId, deposit);

        return true;
    }
}
