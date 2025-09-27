// Mobile Navigation Toggle
document.addEventListener('DOMContentLoaded', function() {
    const mobileMenu = document.getElementById('mobile-menu');
    const navMenu = document.querySelector('.nav-menu');
    
    if (mobileMenu && navMenu) {
        mobileMenu.addEventListener('click', function() {
            this.classList.toggle('is-active');
            navMenu.classList.toggle('active');
        });
    }
});

// Smooth Scrolling for anchor links
document.addEventListener('DOMContentLoaded', function() {
    const links = document.querySelectorAll('a[href^="#"]');
    
    for (let link of links) {
        link.addEventListener('click', function(e) {
            e.preventDefault();
            
            const targetId = this.getAttribute('href');
            const targetElement = document.querySelector(targetId);
            
            if (targetElement) {
                targetElement.scrollIntoView({
                    behavior: 'smooth'
                });
            }
        });
    }
});

// Add scroll effect to navigation
window.addEventListener('scroll', function() {
    const navbar = document.querySelector('.navbar');
    if (navbar) {
        if (window.scrollY > 50) {
            navbar.style.boxShadow = '0 2px 20px rgba(0, 0, 0, 0.2)';
        } else {
            navbar.style.boxShadow = '0 2px 10px rgba(0, 0, 0, 0.1)';
        }
    }
});

// Animation on scroll
function animateOnScroll() {
    const elements = document.querySelectorAll('.info-card, .portfolio-item, .contact-item, .skill-item, .timeline-item');
    
    elements.forEach(element => {
        const elementTop = element.getBoundingClientRect().top;
        const elementVisible = 150;
        
        if (elementTop < window.innerHeight - elementVisible) {
            element.style.opacity = '1';
            element.style.transform = 'translateY(0)';
        }
    });
}

// Initialize animation styles
document.addEventListener('DOMContentLoaded', function() {
    const animatedElements = document.querySelectorAll('.info-card, .portfolio-item, .contact-item, .skill-item, .timeline-item');
    
    animatedElements.forEach(element => {
        element.style.opacity = '0';
        element.style.transform = 'translateY(30px)';
        element.style.transition = 'opacity 0.6s ease, transform 0.6s ease';
    });
    
    // Run animation check on load
    animateOnScroll();
});

// Run animation on scroll
window.addEventListener('scroll', animateOnScroll);

// Contact form validation
document.addEventListener('DOMContentLoaded', function() {
    const contactForm = document.querySelector('.contact-form');
    
    if (contactForm) {
        contactForm.addEventListener('submit', function(e) {
            const name = document.getElementById('name');
            const email = document.getElementById('email');
            const subject = document.getElementById('subject');
            const message = document.getElementById('message');
            
            let isValid = true;
            let errorMessage = '';
            
            // Remove previous error styling
            [name, email, subject, message].forEach(field => {
                if (field) {
                    field.style.borderColor = '#e9ecef';
                }
            });
            
            // Validate name
            if (!name.value.trim()) {
                isValid = false;
                errorMessage += 'Vui lòng nhập tên của bạn.\n';
                name.style.borderColor = '#dc3545';
            }
            
            // Validate email
            const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
            if (!email.value.trim()) {
                isValid = false;
                errorMessage += 'Vui lòng nhập email.\n';
                email.style.borderColor = '#dc3545';
            } else if (!emailRegex.test(email.value)) {
                isValid = false;
                errorMessage += 'Email không hợp lệ.\n';
                email.style.borderColor = '#dc3545';
            }
            
            // Validate subject
            if (!subject.value.trim()) {
                isValid = false;
                errorMessage += 'Vui lòng nhập tiêu đề.\n';
                subject.style.borderColor = '#dc3545';
            }
            
            // Validate message
            if (!message.value.trim()) {
                isValid = false;
                errorMessage += 'Vui lòng nhập nội dung tin nhắn.\n';
                message.style.borderColor = '#dc3545';
            }
            
            if (!isValid) {
                e.preventDefault();
                alert(errorMessage);
            }
        });
    }
});

// Portfolio filtering functionality
document.addEventListener('DOMContentLoaded', function() {
    const filterButtons = document.querySelectorAll('.filter-btn');
    const portfolioItems = document.querySelectorAll('.portfolio-item');
    
    filterButtons.forEach(button => {
        button.addEventListener('click', function() {
            // Update active button
            filterButtons.forEach(btn => btn.classList.remove('active'));
            this.classList.add('active');
            
            const filter = this.getAttribute('data-filter');
            
            // Filter portfolio items
            portfolioItems.forEach(item => {
                const status = item.getAttribute('data-status');
                
                if (filter === 'all') {
                    item.style.display = 'block';
                    setTimeout(() => {
                        item.style.opacity = '1';
                        item.style.transform = 'scale(1)';
                    }, 100);
                } else if (status.toLowerCase().includes(filter.toLowerCase())) {
                    item.style.display = 'block';
                    setTimeout(() => {
                        item.style.opacity = '1';
                        item.style.transform = 'scale(1)';
                    }, 100);
                } else {
                    item.style.opacity = '0';
                    item.style.transform = 'scale(0.8)';
                    setTimeout(() => {
                        item.style.display = 'none';
                    }, 300);
                }
            });
        });
    });
    
    // Initialize portfolio items with transition
    portfolioItems.forEach(item => {
        item.style.transition = 'opacity 0.3s ease, transform 0.3s ease';
    });
});

// Modal functionality
function openModal(modalId, content) {
    const modal = document.getElementById(modalId);
    if (modal) {
        modal.style.display = 'block';
        if (content) {
            const modalContent = modal.querySelector('.modal-body');
            if (modalContent) {
                modalContent.innerHTML = content;
            }
        }
    }
}

function closeModal(modalId) {
    const modal = document.getElementById(modalId || 'projectModal');
    if (modal) {
        modal.style.display = 'none';
    }
}

// Close modal when clicking outside
window.addEventListener('click', function(event) {
    const modals = document.querySelectorAll('.modal');
    modals.forEach(modal => {
        if (event.target === modal) {
            modal.style.display = 'none';
        }
    });
});

// Close modal with Escape key
document.addEventListener('keydown', function(event) {
    if (event.key === 'Escape') {
        const openModals = document.querySelectorAll('.modal[style*="block"]');
        openModals.forEach(modal => {
            modal.style.display = 'none';
        });
    }
});

// Add loading spinner for form submissions
document.addEventListener('DOMContentLoaded', function() {
    const forms = document.querySelectorAll('form');
    
    forms.forEach(form => {
        form.addEventListener('submit', function() {
            const submitBtn = form.querySelector('button[type="submit"]');
            if (submitBtn) {
                const originalText = submitBtn.innerHTML;
                submitBtn.innerHTML = '<i class="fas fa-spinner fa-spin"></i> Đang gửi...';
                submitBtn.disabled = true;
                
                // Re-enable button after 3 seconds (in case of no redirect)
                setTimeout(() => {
                    submitBtn.innerHTML = originalText;
                    submitBtn.disabled = false;
                }, 3000);
            }
        });
    });
});

// Typing effect for hero title
function typeWriter(element, text, speed = 100) {
    let i = 0;
    element.innerHTML = '';
    
    function type() {
        if (i < text.length) {
            element.innerHTML += text.charAt(i);
            i++;
            setTimeout(type, speed);
        }
    }
    
    type();
}

// Initialize typing effect on homepage
document.addEventListener('DOMContentLoaded', function() {
    const heroTitle = document.querySelector('.hero-title');
    if (heroTitle && window.location.pathname.includes('main')) {
        const originalText = heroTitle.textContent;
        setTimeout(() => {
            typeWriter(heroTitle, originalText, 50);
        }, 500);
    }
});

// Add parallax effect to hero section
window.addEventListener('scroll', function() {
    const hero = document.querySelector('.hero');
    if (hero) {
        const scrolled = window.pageYOffset;
        const parallax = scrolled * 0.5;
        hero.style.transform = `translateY(${parallax}px)`;
    }
});

// Add counter animation for stats
function animateCounter(element, target, duration = 2000) {
    let start = 0;
    const increment = target / (duration / 16);
    
    function updateCounter() {
        start += increment;
        if (start < target) {
            element.textContent = Math.floor(start) + '+';
            requestAnimationFrame(updateCounter);
        } else {
            element.textContent = target + '+';
        }
    }
    
    updateCounter();
}

// Initialize counter animation when stats section is visible
document.addEventListener('DOMContentLoaded', function() {
    const statItems = document.querySelectorAll('.stat-item h3');
    let countersAnimated = false;
    
    function checkStatsVisibility() {
        const statsSection = document.querySelector('.stats-section');
        if (statsSection && !countersAnimated) {
            const rect = statsSection.getBoundingClientRect();
            if (rect.top < window.innerHeight && rect.bottom > 0) {
                countersAnimated = true;
                statItems.forEach(stat => {
                    const text = stat.textContent;
                    const number = parseInt(text.replace(/\D/g, ''));
                    if (number) {
                        animateCounter(stat, number);
                    }
                });
            }
        }
    }
    
    window.addEventListener('scroll', checkStatsVisibility);
    checkStatsVisibility(); // Check on load
});

// Add smooth reveal animations
const observerOptions = {
    threshold: 0.1,
    rootMargin: '0px 0px -50px 0px'
};

const observer = new IntersectionObserver(function(entries) {
    entries.forEach(entry => {
        if (entry.isIntersecting) {
            entry.target.style.opacity = '1';
            entry.target.style.transform = 'translateY(0)';
        }
    });
}, observerOptions);

// Observe elements for animation
document.addEventListener('DOMContentLoaded', function() {
    const animateElements = document.querySelectorAll('.info-card, .portfolio-item, .contact-item, .skill-item, .timeline-item, .faq-item');
    
    animateElements.forEach(el => {
        el.style.opacity = '0';
        el.style.transform = 'translateY(30px)';
        el.style.transition = 'opacity 0.6s ease, transform 0.6s ease';
        observer.observe(el);
    });
});

console.log('Website Cá Nhân - JavaScript loaded successfully!');