import UIKit

class MindMattersViewController: UIViewController {
    
    var brain: Brain!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUp()
    }
    
    private func setUp() {
        self.title = "Mind Matters"
        self.brain = Brain()
    }
    
    func startMeditation() {
        self.brain.startMeditation()
        self.presentMeditationView()
    }
    
    private func presentMeditationView() {
        let meditationViewController = MeditationViewController()
        self.navigationController?.pushViewController(meditationViewController, animated: true)
    }
    
    func beginRelaxationExercise() {
        self.brain.startRelaxationExercise()
        self.presentRelaxationView()
    }
    
    private func presentRelaxationView() {
        let relaxationViewController = RelaxationViewController()
        self.navigationController?.pushViewController(relaxationViewController, animated: true)
    }
    
    func beginSleepLogging() {
        self.brain.startSleepLogging()
        self.presentSleepLogView()
    }
    
    private func presentSleepLogView() {
        let sleepLogViewController = SleepLogViewController()
        self.navigationController?.pushViewController(sleepLogViewController, animated: true)
    }
    
    func beginThoughtTracking() {
        self.brain.startThoughtTracking()
        self.presentThoughtTrackingView()
    }
    
    private func presentThoughtTrackingView() {
        let thoughtTrackingViewController = ThoughtTrackingViewController()
        self.navigationController?.pushViewController(thoughtTrackingViewController, animated: true)
    }
    
    func beginGratitudeJournaling() {
        self.brain.startGratitudeJournaling()
        self.presentGratitudeJournalView()
    }
    
    private func presentGratitudeJournalView() {
        let gratitudeJournalViewController = GratitudeJournalViewController()
        self.navigationController?.pushViewController(gratitudeJournalViewController, animated: true)
    }
    
    func beginJournaling() {
        self.brain.startJournaling()
        self.presentJournalView()
    }
    
    private func presentJournalView() {
        let journalViewController = JournalViewController()
        self.navigationController?.pushViewController(journalViewController, animated: true)
    }
    
    func beginBreathingExercises() {
        self.brain.startBreathingExercises()
        self.presentBreathingExercisesView()
    }
    
    private func presentBreathingExercisesView() {
        let breathingExercisesViewController = BreathingExercisesViewController()
        self.navigationController?.pushViewController(breathingExercisesViewController, animated: true)
    }
    
    func beginMoodTracking() {
        self.brain.startMoodTracking()
        self.presentMoodTrackingView()
    }
    
    private func presentMoodTrackingView() {
        let moodTrackingViewController = MoodTrackingViewController()
        self.navigationController?.pushViewController(moodTrackingViewController, animated: true)
    }
    
    func beginPositiveThinking() {
        self.brain.startPositiveThinking()
        self.presentPositiveThinkingView()
    }
    
    private func presentPositiveThinkingView() {
        let positiveThinkingViewController = PositiveThinkingViewController()
        self.navigationController?.pushViewController(positiveThinkingViewController, animated: true)
    }
    
    func beginSelfCare() {
        self.brain.startSelfCare()
        self.presentSelfCareView()
    }
    
    private func presentSelfCareView() {
        let selfCareViewController = SelfCareViewController()
        self.navigationController?.pushViewController(selfCareViewController, animated: true)
    }
    
    func beginProblemSolving() {
        self.brain.startProblemSolving()
        self.presentProblemSolvingView()
    }
    
    private func presentProblemSolvingView() {
        let problemSolvingViewController = ProblemSolvingViewController()
        self.navigationController?.pushViewController(problemSolvingViewController, animated: true)
    }
    
    func beginStressManagement() {
        self.brain.startStressManagement()
        self.presentStressManagementView()
    }
    
    private func presentStressManagementView() {
        let stressManagementViewController = StressManagementViewController()
        self.navigationController?.pushViewController(stressManagementViewController, animated: true)
    }
    
    func beginVisualization() {
        self.brain.startVisualization()
        self.presentVisualizationView()
    }
    
    private func presentVisualizationView() {
        let visualizationViewController = VisualizationViewController()
        self.navigationController?.pushViewController(visualizationViewController, animated: true)
    }
    
    func beginMindfulness() {
        self.brain.startMindfulness()
        self.presentMindfulnessView()
    }
    
    private func presentMindfulnessView() {
        let mindfulnessViewController = MindfulnessViewController()
        self.navigationController?.pushViewController(mindfulnessViewController, animated: true)
    }
    
    func beginAffirmation() {
        self.brain.startAffirmation()
        self.presentAffirmationView()
    }
    
    private func presentAffirmationView() {
        let affirmationViewController = AffirmationViewController()
        self.navigationController?.pushViewController(affirmationViewController, animated: true)
    }
    
    func beginCreativeVisualization() {
        self.brain.startCreativeVisualization()
        self.presentCreativeVisualizationView()
    }
    
    private func presentCreativeVisualizationView() {
        let creativeVisualizationViewController = CreativeVisualizationViewController()
        self.navigationController?.pushViewController(creativeVisualizationViewController, animated: true)
    }
    
    func beginFocusAndAttention() {
        self.brain.startFocusAndAttention()
        self.presentFocusAndAttentionView()
    }
    
    private func presentFocusAndAttentionView() {
        let focusAndAttentionViewController = FocusAndAttentionViewController()
        self.navigationController?.pushViewController(focusAndAttentionViewController, animated: true)
    }
    
    func beginSelfCarePlanning() {
        self.brain.startSelfCarePlanning()
        self.presentSelfCarePlanningView()
    }
    
    private func presentSelfCarePlanningView() {
        let selfCarePlanningViewController = SelfCarePlanningViewController()
        self.navigationController?.pushViewController(selfCarePlanningViewController, animated: true)
    }
    
    func beginRelationalHealing() {
        self.brain.startRelationalHealing()
        self.presentRelationalHealingView()
    }
    
    private func presentRelationalHealingView() {
        let relationalHealingViewController = RelationalHealingViewController()
        self.navigationController?.pushViewController(relationalHealingViewController, animated: true)
    }
    
    func beginJournalingPrompts() {
        self.brain.startJournalingPrompts()
        self.presentJournalingPromptsView()
    }
    
    private func presentJournalingPromptsView() {
        let journalingPromptsViewController = JournalingPromptsViewController()
        self.navigationController?.pushViewController(journalingPromptsViewController, animated: true)
    }
    
    func beginGoalSetting() {
        self.brain.startGoalSetting()
        self.presentGoalSettingView()
    }
    
    private func presentGoalSettingView() {
        let goalSettingViewController = GoalSettingViewController()
        self.navigationController?.pushViewController(goalSettingViewController, animated: true)
    }
 
    func beginSocialSupport() {
        self.brain.startSocialSupport()
        self.presentSocialSupportView()
    }
    
    private func presentSocialSupportView() {
        let socialSupportViewController = SocialSupportViewController()
        self.navigationController?.pushViewController(socialSupportViewController, animated: true)
    }
    
    func beginGratitudeProjects() {
        self.brain.startGratitudeProjects()
        self.presentGratitudeProjectsView()
    }
    
    private func presentGratitudeProjectsView() {
        let gratitudeProjectsViewController = GratitudeProjectsViewController()
        self.navigationController?.pushViewController(gratitudeProjectsViewController, animated: true)
    }
    
    func beginRelaxationWalking() {
        self.brain.startRelaxationWalking()
        self.presentRelaxationWalkingView()
    }
    
    private func presentRelaxationWalkingView() {
        let relaxationWalkingViewController = RelaxationWalkingViewController()
        self.navigationController?.pushViewController(relaxationWalkingViewController, animated: true)
    }
    
    func beginRewardsReflection() {
        self.brain.startRewardsReflection()
        self.presentRewardsReflectionView()
    }
    
    private func presentRewardsReflectionView() {
        let rewardsReflectionViewController = RewardsReflectionViewController()
        self.navigationController?.pushViewController(rewardsReflectionViewController, animated: true)
    }
    
    func beginMindfulEating() {
        self.brain.startMindfulEating()
        self.presentMindfulEatingView()
    }
    
    private func presentMindfulEatingView() {
        let mindfulEatingViewController = MindfulEatingViewController()
        self.navigationController?.pushViewController(mindfulEatingViewController, animated: true)
    }
    
    func beginSelfEsteemBuilding() {
        self.brain.startSelfEsteemBuilding()
        self.presentSelfEsteemBuildingView()
    }
    
    private func presentSelfEsteemBuildingView() {
        let selfEsteemBuildingViewController = SelfEsteemBuildingViewController()
        self.navigationController?.pushViewController(selfEsteemBuildingViewController, animated: true)
    }
    
    func beginGrowthMindsetPractices() {
        self.brain.startGrowthMindsetPractices()
        self.presentGrowthMindsetPracticesView()
    }
    
    private func presentGrowthMindsetPracticesView() {
        let growthMindsetPracticesViewController = GrowthMindsetPracticesViewController()
        self.navigationController?.pushViewController(growthMindsetPracticesViewController, animated: true)
    }
    
    func beginRitualMaking() {
        self.brain.startRitualMaking()
        self.presentRitualMakingView()
    }
    
    private func presentRitualMakingView() {
        let ritualMakingViewController = RitualMakingViewController()
        self.navigationController?.pushViewController(ritualMakingViewController, animated: true)
    }
    
    func beginCreativeExpressions() {
        self.brain.startCreativeExpressions()
        self.presentCreativeExpressionsView()
    }
    
    private func presentCreativeExpressionsView() {
        let creativeExpressionsViewController = CreativeExpressionsViewController()
        self.navigationController?.pushViewController(creativeExpressionsViewController, animated: true)
    }
    
    func beginExplorationOfFeelings() {
        self.brain.startExplorationOfFeelings()
        self.presentExplorationOfFeelingsView()
    }
    
    private func presentExplorationOfFeelingsView() {
        let explorationOfFeelingsViewController = ExplorationOfFeelingsViewController()
        self.navigationController?.pushViewController(explorationOfFeelingsViewController, animated: true)
    }
    
    func beginPositiveMantraPractices() {
        self.brain.startPositiveMantraPractices()
        self.presentPositiveMantraPracticesView()
    }
    
    private func presentPositiveMantraPracticesView() {
        let positiveMantraPracticesViewController = PositiveMantraPracticesViewController()
        self.navigationController?.pushViewController(positiveMantraPracticesViewController, animated: true)
    }
    
    func beginListeningExercises() {
        self.brain.startListeningExercises()
        self.presentListeningExercisesView()
    }
    
    private func presentListeningExercisesView() {
        let listeningExercisesViewController = ListeningExercisesViewController()
        self.navigationController?.pushViewController(listeningExercisesViewController, animated: true)
    }
    
    func beginSelfCompassionPractices() {
        self.brain.startSelfCompassionPractices()
        self.presentSelfCompassionPracticesView()
    }
    
    private func presentSelfCompassionPracticesView() {
        let selfCompassionPracticesViewController = SelfCompassionPracticesViewController()
        self.navigationController?.pushViewController(selfCompassionPracticesViewController, animated: true)
    }
    
    func beginReframingThoughts() {
        self.brain.startReframingThoughts()
        self.presentReframingThoughtsView()
    }
    
    private func presentReframingThoughtsView() {
        let reframingThoughtsViewController = ReframingThoughtsViewController()
        self.navigationController?.pushViewController(reframingThoughtsViewController, animated: true)
    }
    
    func beginExploringValues() {
        self.brain.startExploringValues()
        self.presentExploringValuesView()
    }
    
    private func presentExploringValuesView() {
        let exploringValuesViewController = ExploringValuesViewController()
        self.navigationController?.pushViewController(exploringValuesViewController, animated: true)
    }
    
    func beginGardening() {
        self.brain.startGardening()
        self.presentGardeningView()
    }
    
    private func presentGardeningView() {
        let gardeningViewController = GardeningViewController()